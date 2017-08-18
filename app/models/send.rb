class Send < ApplicationRecord
  has_many :hotels
  validates :start_time, uniqueness: { scope: :hotel_id , notice: "Fecha Ya utilizada" }
  validates :end_time, uniqueness: { scope: :hotel_id, notice:"Fecha no valida"}



end
