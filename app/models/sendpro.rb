class Sendpro < ApplicationRecord
  validates :start_time, uniqueness: { scope: :lugar , notice: "Fecha Ya utilizada" }
  validates :end_time, uniqueness: { scope: :lugar, notice:"Fecha no valida"}
  attr_accessor :total
  attr_accessor :lugar
  attr_accessor :photo
  attr_accessor :status
  attr_accessor :hotel_id
  attr_accessor :pago
end
