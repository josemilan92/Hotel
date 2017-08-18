class Send < ApplicationRecord
  has_many :hotels
  has_many :pagos
  has_many :estados
  validates :start_time, uniqueness: { scope: :hotel_id , notice: "Fecha Ya utilizada" }
  validates :end_time, uniqueness: { scope: :hotel_id, notice:"Fecha no valida"}



end
