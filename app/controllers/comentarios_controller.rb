class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /comentarios/new
  layout 'admin'

  def index
    @total_orders = Comida.count
    @total = Send.where(:status=="reservado").count

  end
  def ordenes
    @comidas=Comida.all
  end
  def producto
    @products=Product.all
  end
  def promotion
      @promotions= Promotion.all.page(params[:page]).per(5)
  end

  def hotel
    @hotels= Hotel.all.page(params[:page]).per(5)
  end

  def reservacion
    @q = params[:q]
    @z = params[:z]
    if @q || @z
      @sends = Send.where(:user_id => @q, :estatus => @z).page(params[:page]).per(5)
      @sendpros = Sendpro.where(:user_id => @q,:status => @z).page(params[:page]).per(5)
    else
      @sends = Send.all.page(params[:page]).per(5)
      @sendpros = Sendpro.all.page(params[:page]).per(5)
    end


  end

end
