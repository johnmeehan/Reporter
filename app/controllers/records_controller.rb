class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]

  # GET /records
  # GET /records.json
  def index
    version_info
    # @records = Record.all
    @records = Record.page(params[:page]).per(20)
    # @records = Record.search(version: @latestversion)
  end

  # GET /records/1
  # GET /records/1.json
  def show
  end

  # GET /records/new
  def new
    @record = Record.new
  end

  # GET /records/1/edit
  def edit
  end

  # POST /records
  # POST /records.json
  def create
    @record = Record.new(record_params)

    respond_to do |format|
      if @record.save
        format.html { redirect_to @record, notice: 'Record was successfully created.' }
        format.json { render :show, status: :created, location: @record }
      else
        format.html { render :new }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /records/1
  # PATCH/PUT /records/1.json
  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1
  # DELETE /records/1.json
  def destroy
    @record.destroy
    respond_to do |format|
      format.html { redirect_to records_url, notice: 'Record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def version_info
      if Record.any?
        @version_count = Record.uniq.pluck(:version).count
        @latestversion = Record.uniq.order("version DESC").first.version
      else
        @version_count = 0
        @latestversion = 0
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:version, :current_holdings, :previous_holdings, :market_value, :previous_market_value, :pct_held, :pct_portfolio, :market_capitalization, :q0_holding, :q0_quarter, :q0_source, :q1_holding, :q1_quarter, :q1_source, :q2_holding, :q2_quarter, :q2_source, :q3_holding, :q3_quarter, :q3_source, :q4_holding, :q4_quarter, :q4_source, :q5_holding, :q5_quarter, :q5_source, :q6_holding, :q6_quarter, :q6_source, :q7_holding, :q7_quarter, :q7_source, :q8_holding, :q8_quarter, :q8_source, :p0_price, :p1_price, :p4_price, :metro_area, :firm_name, :company_name, :ticker, :q0_market_value, :qoq_net_change_flow, :yoy_net_change_flow, :qoq_inflow, :qoq_outflow, :yoy_inflow, :yoy_outflow, :qoq_new_positions, :qoq_soldout_positions, :qoq_increased_positions, :qoq_decreased_positions, :qoq_net_position_change, :yoy_new_positions, :yoy_soldout_positions, :yoy_increased_positions, :yoy_decreased_positions, :yoy_net_position_change, :new_positions, :soldout_positions, :increased_positions, :decreased_positions, :net_position_change, :factset_security_id, :factset_entity_id)
    end
end
