class ImageCashierosController < ApplicationController
  before_action :set_image_cashiero, only: [:show, :edit, :update, :destroy]

  # GET /image_cashieros
  # GET /image_cashieros.json
  def index
    @image_cashieros = ImageCashiero.all
  end

  # GET /image_cashieros/1
  # GET /image_cashieros/1.json
  def show
  end

  # GET /image_cashieros/new
  def new
    @image_cashiero = ImageCashiero.new
  end

  # GET /image_cashieros/1/edit
  def edit
  end

  # POST /image_cashieros
  # POST /image_cashieros.json
  def create
    @image_cashiero = ImageCashiero.new(image_cashiero_params)

    respond_to do |format|
      if @image_cashiero.save
        format.html { redirect_to @image_cashiero, notice: 'Image cashiero was successfully created.' }
        format.json { render :show, status: :created, location: @image_cashiero }
      else
        format.html { render :new }
        format.json { render json: @image_cashiero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_cashieros/1
  # PATCH/PUT /image_cashieros/1.json
  def update
    respond_to do |format|
      if @image_cashiero.update(image_cashiero_params)
        format.html { redirect_to @image_cashiero, notice: 'Image cashiero was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_cashiero }
      else
        format.html { render :edit }
        format.json { render json: @image_cashiero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_cashieros/1
  # DELETE /image_cashieros/1.json
  def destroy
    @image_cashiero.destroy
    respond_to do |format|
      format.html { redirect_to image_cashieros_url, notice: 'Image cashiero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_cashiero
      @image_cashiero = ImageCashiero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_cashiero_params
      params.require(:image_cashiero).permit(:image, :cashiero_id)
    end
end
