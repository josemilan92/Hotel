class Send < ApplicationRecord
  has_many :hotels
  has_one :photo
  has_one :lugar
  has_one :pago
  has_one :total
  has_one :status
  validates :start_time, uniqueness: { scope: :lugar , notice: "Fecha Ya utilizada" }
  validates :end_time, uniqueness: { scope: :lugar, notice:"Fecha no valida"}



end
