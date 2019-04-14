require 'mtik'

class ConcentratorsController < ApplicationController
  before_action :set_concentrator, only: [:show, :edit, :update, :destroy]

  def test_concentrator
    response =  test_connection params
    puts response
    puts response.inspect
    respond_to do |format|
      format.json { render json: response.to_json, status: response[:status] }
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
      params.require(:concentrator).permit(:hostname, :address, :login, :password)
    end

    def test_connection(params)
      hostname = params[:hostname]
      address = params[:address]
      login = params[:login]
      password = params[:password]

      begin
        mk = MTik::command(host: address, user: login, password: password, command: '/ip/address/print', conn_timeout: 5)
        {message: mk, success: false, status: :ok}
      rescue Exception=> e
        {message: e.message , success: false, status: :error}
      end
    end
end
