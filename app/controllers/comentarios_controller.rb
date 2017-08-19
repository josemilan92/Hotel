class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /comentarios/new
  layout 'admin'

  def index

  end
  def promotion
      @promotions= Promotion.all
  end

  def hotel
    @hotels= Hotel.all
  end

  def reservacion
    @q = params[:q]
    if @q
      @sends = Send.where(:user_id => @q)
    else
      @sends = Send.all
    end

    @sendpros = Sendpro.all
  end

end
