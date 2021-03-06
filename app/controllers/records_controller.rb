class RecordsController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :set_record, only: [:show, :edit, :update, :destroy]
  before_action :get_column_names, only: [:index]

  def index
    get_latest_versions_and_paginate
  end

  def show
  end

  def new
    @record = Record.new
  end

  def edit
  end

  def create
    @record = Record.new(record_params)

    respond_to do |format|
      if @record.save
        format.html { redirect_to @record, notice: 'Record was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: 'Record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @record.destroy
    respond_to do |format|
      format.html { redirect_to records_url, notice: 'Record was successfully destroyed.' }
    end
  end

  def import
    ImportCsvJob.perform_later
    # sleep 3.seconds
    version_info
    respond_to do |format|
      format.js { render layout: false}
    end
  end

  private

    def version_info
      if Record.any?
        @version_count = Record.versions_count
        @latestversion = Record.latest_version_number
      else
        @latestversion = @version_count = 0
      end
    end

    def set_record
      @record = Record.find(params[:id])
    end

    def record_params
      params.require(:record).permit(:sort, :class, :direction, :version, :current_holdings, :previous_holdings, :market_value, :previous_market_value, :pct_held, :pct_portfolio, :market_capitalization, :q0_holding, :q0_quarter, :q0_source, :q1_holding, :q1_quarter, :q1_source, :q2_holding, :q2_quarter, :q2_source, :q3_holding, :q3_quarter, :q3_source, :q4_holding, :q4_quarter, :q4_source, :q5_holding, :q5_quarter, :q5_source, :q6_holding, :q6_quarter, :q6_source, :q7_holding, :q7_quarter, :q7_source, :q8_holding, :q8_quarter, :q8_source, :p0_price, :p1_price, :p4_price, :metro_area, :firm_name, :company_name, :ticker, :q0_market_value, :qoq_net_change_flow, :yoy_net_change_flow, :qoq_inflow, :qoq_outflow, :yoy_inflow, :yoy_outflow, :qoq_new_positions, :qoq_soldout_positions, :qoq_increased_positions, :qoq_decreased_positions, :qoq_net_position_change, :yoy_new_positions, :yoy_soldout_positions, :yoy_increased_positions, :yoy_decreased_positions, :yoy_net_position_change, :new_positions, :soldout_positions, :increased_positions, :decreased_positions, :net_position_change, :factset_security_id, :factset_entity_id)
    end

    def sort_column
      @columns.include?(params[:sort]) ? params[:sort] : 'version'
    end

    def sort_direction
      %w(asc desc).include?(params[:direction]) ? params[:direction] : 'desc'
    end

    def set_visabilty
      unless session[:visible]
        session[:visible] = {}
        @columns.each do |col|
          session[:visible][col.to_sym] = true
        end
      end
    end

    def get_column_names
      @columns = Record.record_column_names
      set_visabilty
      version_info
    end

    def get_latest_versions_and_paginate
      @records = Record.reports_search(@latestversion, sort_column, sort_direction)
                       .page(params[:page]).per(20).records
    end
end
