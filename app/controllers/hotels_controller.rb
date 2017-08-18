class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]
  after_action :authenticate_user!, except:[  :index]

  # GET /hotels
  # GET /hotels.json
  def index
    @q = params[:q]
    if @q
      @hotels = Hotel.where(:category => @q)
    else
      @hotels = Hotel.all
    end
    @send = Send.all
   # @hotels = Hotel.all
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
    @sends = Send.where(:hotel_id => params[:id])
    @comment =Comment.new
    @send =Send.new
  end

  # GET /hotels/new
  def new
    @hotel = Hotel.new
  end

  # GET /hotels/1/edit
  def edit
  end

  # POST /hotels
  # POST /hotels.json
  def create
    @hotel = Hotel.new(hotel_params)
    respond_to do |format|
      if @hotel.save
        format.html { redirect_to comentarios_hotel_path, notice: 'Hotel was successfully created.' }
        format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotels/1
  # PATCH/PUT /hotels/1.json
  def update
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to comentarios_hotel_path, notice: 'Hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotel }
      else
        format.html { render :edit }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    @hotel.destroy
    respond_to do |format|
      format.html { redirect_to comentarios_hotel_url, notice: 'Hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotel_params
      params.require(:hotel).permit(:nombre, :photo, :descripcion, :price, :servicio, :category)
    end
end
