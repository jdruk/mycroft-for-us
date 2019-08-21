class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  # GET /plan_of_data
  # GET /plan_of_data.json
  def index
    @plans = Plan.all
  end

  # GET /plan_of_data/1
  # GET /plan_of_data/1.json
  def show
  end

  # GET /plan_of_data/new
  def new
    @plan = Plan.new
  end

  # GET /plan_of_data/1/edit
  def edit
  end

  # POST /plan_of_data
  # POST /plan_of_data.json
  def create
    @plan = Plan.new(plan_params)

    respond_to do |format|
      if @plan.save
        format.html { redirect_to @plan, notice: 'Plan of datum was successfully created.' }
        format.json { render :show, status: :created, location: @plan }
      else
        format.html { render :new }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_of_data/1
  # PATCH/PUT /plan_of_data/1.json
  def update
    respond_to do |format|
      if @plan.update(plan_params)
        format.html { redirect_to @plan, notice: 'Plan of datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan }
      else
        format.html { render :edit }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_of_data/1
  # DELETE /plan_of_data/1.json
  def destroy
    @plan.destroy
    respond_to do |format|
      format.html { redirect_to plans_url, notice: 'Plan of datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan
      @plan = Plan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_params
      params.require(:plan).permit(:name, :velocity_max_upload, :velocity_max_download, address_range_attributes: [:id, :name, :start_range, :end_range, :concentrator_id])
    end
end
