class SendprosController < ApplicationController
  before_action :set_sendpro, only: [:show, :edit, :update, :destroy]
  after_action :authenticate_user!, except:[ :show, :index]
  # GET /sendpros
  # GET /sendpros.json
  def index
    @q = params[:q]
    @z= params[:z]
    if @q
      @promotions = Promotion.where(:category => @q)
    else
      @promotions = Promotion.all
    end


    @sendpros = Sendpro.all
  end

  # GET /sendpros/1
  # GET /sendpros/1.json
  def show
  end

  # GET /sendpros/new
  def new
    @promotions = Promotion.find(params[:nombre])
    @sendpro = Sendpro.new
  end

  # GET /sendpros/1/edit
  def edit
  end

  # POST /sendpros
  # POST /sendpros.json
  def create
    @hotels= Hotel.all
    @promotions = Promotion.all
    @sendpro.user_id=current_user.id
    @sendpro = Sendpro.new(sendpro_params)
      if @sendpro.save
        redirect_to mysend_url, notice: 'Habitación Guardada'
      else
        redirect_to promotions_url, notice: 'Fechas ocupadas'
      end
  end

  # PATCH/PUT /sendpros/1
  # PATCH/PUT /sendpros/1.json
  def update
    respond_to do |format|
      if @sendpro.update(sendpro_params)
        format.html { redirect_to @sendpro, notice: 'Sendpro was successfully updated.' }
        format.json { render :show, status: :ok, location: @sendpro }
      else
        format.html { render :edit }
        format.json { render json: @sendpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sendpros/1
  # DELETE /sendpros/1.json
  def destroy
    @sendpro.destroy
    respond_to do |format|
      format.html { redirect_to mysend_url, notice: 'Sendpro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sendpro
      @sendpro = Sendpro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sendpro_params
      params.require(:sendpro).permit(:lugar, :fechaPri, :fechaUlt, :total, :photo, :pago, :status,:start_time, :end_time, :promotion_id)
    end
end
