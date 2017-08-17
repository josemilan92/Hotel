class SendsController < ApplicationController
 before_action :set_send, only: [:show, :edit, :update, :destroy]
 after_action :authenticate_user!, except:[ :show, :index]
 rescue_from ActiveRecord::RecordNotFound, with: :invalid_send

  def mysend
    @hotels = Hotel.all
 @send= Send.where(:user_id=>current_user.id)
    @sendpros= Sendpro.where(:user_id=>current_user.id)
  end

  def doble
  end
  # GET /sends
  # GET /sends.json
  def index
    @q = params[:q]
    @z= params[:z]
    if @q
      @hotels = Hotel.where(:category => @q)
    else
      @hotels = Hotel.all
    end
    @send =Send.new
    @sends = Send.all
    #@hotels = Hotel.all
  end

  # GET /sends/1
  # GET /sends/1.json
  def show
  end

  # GET /sends/new
  def new
    @hotels = Hotel.find(params[:nombre])
    #@hotels = Hotel.all
    @sends = Send.all
    @send = Send.new
  end

  # GET /sends/1/edit
  def edit
    @hotels = Hotel.all
  end

  # POST /sends
  # POST /sends.json
  def create

    #@hotels = Hotel.all
    #@hotels= Hotel.all
    #@send.hotel = @hotel
    @promotions = Promotion.all
    @send = Send.new(send_params)
    @send.user_id=current_user.id
      if @send.save
       redirect_to mysend_url, notice: 'Habitación Guardada'
       else
        redirect_to hotels_url, notice: 'Fechas ocupadas'
      end
  end

  # PATCH/PUT /sends/1
  # PATCH/PUT /sends/1.json
  def update
    respond_to do |format|
      if @send.update(send_params)
        format.html { redirect_to comentarios_reservacion_path, notice: 'Send was successfully updated.' }
        format.json { render :show, status: :ok, location: @send }
      else
        format.html { render :edit }
        format.json { render json: @send.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sends/1
  # DELETE /sends/1.json
  def destroy
    @send.destroy
    respond_to do |format|
      format.html { redirect_to mysend_url, notice: 'Send was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send
      @send = Send.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def send_params
      params.require(:send).permit(:lugar, :pago, :total, :estatus, :photo, :start_time, :end_time, :hotel_id)
    end

  #def invalid_send
   # logger.error "Attempt to access invalid cart #{params[:id]}"
    #redirect_to sends_url, notice: 'Habitación Equivocada'
  #end
end
