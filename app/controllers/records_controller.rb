class RecordsController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :set_record, only: [:show, :edit, :update, :destroy]

  def index
    get_column_names
    set_visabilty

    version_info
    # # Only Show recent versions and paginate
    response = Record.where(version: @latestversion).order(sort_column + ' ' + sort_direction ).page(params[:page]).per(20)
    # q = @latestversion
    # response = Record.search(q).page(params[:page]).records
    @records = response

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

    def set_record
      @record = Record.find(params[:id])
    end


    def sort_column
      @columns.include?(params[:sort]) ? params[:sort] : "version"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
    end

    def set_visabilty
      unless session[:visible]
        session[:visible] = {}
        @columns.each do |col|
          session[:visible][col.to_sym] = true
        end
        # session[:visible].except!(:created_at, :updated_at, :id)
      end
    end

    def get_column_names
      @columns = Record.record_column_names
    end
end
