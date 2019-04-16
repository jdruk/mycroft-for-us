class AddressRangesController < ApplicationController
  before_action :set_address_range, only: [:show, :edit, :update, :destroy]

  # GET /address_ranges
  # GET /address_ranges.json
  def index
    @address_ranges = AddressRange.all
  end

  # GET /address_ranges/1
  # GET /address_ranges/1.json
  def show
  end

  # GET /address_ranges/new
  def new
    @address_range = AddressRange.new
  end

  # GET /address_ranges/1/edit
  def edit
  end

  # POST /address_ranges
  # POST /address_ranges.json
  def create
    @address_range = AddressRange.new(address_range_params)

    respond_to do |format|
      if @address_range.save
        format.html { redirect_to @address_range, notice: 'Address range was successfully created.' }
        format.json { render :show, status: :created, location: @address_range }
      else
        format.html { render :new }
        format.json { render json: @address_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_ranges/1
  # PATCH/PUT /address_ranges/1.json
  def update
    respond_to do |format|
      if @address_range.update(address_range_params)
        format.html { redirect_to @address_range, notice: 'Address range was successfully updated.' }
        format.json { render :show, status: :ok, location: @address_range }
      else
        format.html { render :edit }
        format.json { render json: @address_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_ranges/1
  # DELETE /address_ranges/1.json
  def destroy
    @address_range.destroy
    respond_to do |format|
      format.html { redirect_to address_ranges_url, notice: 'Address range was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_range
      @address_range = AddressRange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_range_params
      params.require(:address_range).permit(:name, :start_range, :end_range, :concentrator_id)
    end
end
