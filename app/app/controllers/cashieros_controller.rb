class CashierosController < ApplicationController
  before_action :set_cashiero, only: [:show, :edit, :update, :destroy]

  # GET /cashieros
  # GET /cashieros.json
  def index
    @cashieros = Cashiero.all
  end

  # GET /cashieros/1
  # GET /cashieros/1.json
  def show
  end

  # GET /cashieros/new
  def new
    @cashiero = Cashiero.new
  end

  # GET /cashieros/1/edit
  def edit
  end

  # POST /cashieros
  # POST /cashieros.json
  def create
    @cashiero = Cashiero.new(cashiero_params)

    respond_to do |format|
      if @cashiero.save
        format.html { redirect_to @cashiero, notice: 'Cashiero was successfully created.' }
        format.json { render :show, status: :created, location: @cashiero }
      else
        format.html { render :new }
        format.json { render json: @cashiero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashieros/1
  # PATCH/PUT /cashieros/1.json
  def update
    respond_to do |format|
      if @cashiero.update(cashiero_params)
        format.html { redirect_to @cashiero, notice: 'Cashiero was successfully updated.' }
        format.json { render :show, status: :ok, location: @cashiero }
      else
        format.html { render :edit }
        format.json { render json: @cashiero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashieros/1
  # DELETE /cashieros/1.json
  def destroy
    @cashiero.destroy
    respond_to do |format|
      format.html { redirect_to cashieros_url, notice: 'Cashiero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashiero
      @cashiero = Cashiero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cashiero_params
      params.require(:cashiero).permit(:operation, :value, :description, :photos, :user_id, :payment_type, :bank_account_id)
    end
end
