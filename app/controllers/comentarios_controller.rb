class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /comentarios/new
  layout 'admin'

  def index

  end
  def promotion
      @promotions= Promotion.all.page(params[:page]).per(5)
  end

  def hotel
    @hotels= Hotel.all.page(params[:page]).per(5)
  end

  def reservacion
    @q = params[:q]
    if @q
      @sends = Send.where(:user_id => @q).page(params[:page]).per(5)
      @sendpros = Sendpro.where(:user_id => @q).page(params[:page]).per(5)
    else
      @sends = Send.all.page(params[:page]).per(5)
      @sendpros = Sendpro.all.page(params[:page]).per(5)
    end


  end

end
