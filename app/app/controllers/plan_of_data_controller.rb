class PlanOfDataController < ApplicationController
  before_action :set_plan_of_datum, only: [:show, :edit, :update, :destroy]

  # GET /plan_of_data
  # GET /plan_of_data.json
  def index
    @plan_of_data = PlanOfDatum.all
  end

  # GET /plan_of_data/1
  # GET /plan_of_data/1.json
  def show
  end

  # GET /plan_of_data/new
  def new
    @plan_of_datum = PlanOfDatum.new
  end

  # GET /plan_of_data/1/edit
  def edit
  end

  # POST /plan_of_data
  # POST /plan_of_data.json
  def create
    @plan_of_datum = PlanOfDatum.new(plan_of_datum_params)

    respond_to do |format|
      if @plan_of_datum.save
        format.html { redirect_to @plan_of_datum, notice: 'Plan of datum was successfully created.' }
        format.json { render :show, status: :created, location: @plan_of_datum }
      else
        format.html { render :new }
        format.json { render json: @plan_of_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_of_data/1
  # PATCH/PUT /plan_of_data/1.json
  def update
    respond_to do |format|
      if @plan_of_datum.update(plan_of_datum_params)
        format.html { redirect_to @plan_of_datum, notice: 'Plan of datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan_of_datum }
      else
        format.html { render :edit }
        format.json { render json: @plan_of_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_of_data/1
  # DELETE /plan_of_data/1.json
  def destroy
    @plan_of_datum.destroy
    respond_to do |format|
      format.html { redirect_to plan_of_data_url, notice: 'Plan of datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_of_datum
      @plan_of_datum = PlanOfDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_of_datum_params
      params.require(:plan_of_datum).permit(:name, :velocity_max_upload, :velocity_max_download)
    end
end
