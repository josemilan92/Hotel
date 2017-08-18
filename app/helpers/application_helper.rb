module ApplicationHelper

  def list_categories
    @categories = Category.all
  end
  def list_estado
    @estados = Estado.all
  end
  def list_promociones
    @promotion = Promotion.all
  end
  def list_hotels
    @hotel = Hotel.all
  end
  def ad_available
    Promotion.first
  end
  def ad_ava
    Send.first
  end
  def list_price
    @Pagos = Pago.all
  end
end
