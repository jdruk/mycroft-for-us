class ConcentratorsController < ApplicationController

  before_action :set_concentrator, only: [:show, :edit, :update, :destroy]

  def test_concentrator
    concentrator = Concentrator.new hostname: params[:hostname],
                    address: params[:address],
                    login: params[:login],
                    password: params[:password]

    respond_to do |format|
      format.json { render json: concentrator.test_conection.to_json, status: concentrator.test_conection[:status] }
    end
  end

  def concentrator_info
    respond_to do |format|
       format.json { render json: current_concentrator.info_concentrator.to_json, status: current_concentrator.info_concentrator[:status] }
    end
  end

  # GET /concentrators
  # GET /concentrators.json
  def index
    @concentrators = Concentrator.all
  end

  # GET /concentrators/1
  # GET /concentrators/1.json
  def show
  end

  # GET /concentrators/new
  def new
    @concentrator = Concentrator.new
    @concentrator.build_address_range
  end

  # GET /concentrators/1/edit
  def edit
  end

  # POST /concentrators
  # POST /concentrators.json
  def create
    @concentrator = Concentrator.new(concentrator_params)

    respond_to do |format|
      if @concentrator.save
        format.html { redirect_to @concentrator, notice: 'Concentrator was successfully created.' }
        format.json { render :show, status: :created, location: @concentrator }
      else
        format.html { render :new }
        format.json { render json: @concentrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concentrators/1
  # PATCH/PUT /concentrators/1.json
  def update
    respond_to do |format|
      if @concentrator.update(concentrator_params)
        format.html { redirect_to @concentrator, notice: 'Concentrator was successfully updated.' }
        format.json { render :show, status: :ok, location: @concentrator }
      else
        format.html { render :edit }
        format.json { render json: @concentrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concentrators/1
  # DELETE /concentrators/1.json
  def destroy
    @concentrator.destroy
    respond_to do |format|
      format.html { redirect_to concentrators_url, notice: 'Concentrator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concentrator
      @concentrator = Concentrator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concentrator_params
      params.require(:concentrator).permit(:hostname, :address, :login, :password, :address_range_id, 
        address_range_attributes: [:id, :name, :start_range, :end_range, :concentrator_id])
    end
end
