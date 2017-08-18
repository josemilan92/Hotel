class Send < ApplicationRecord
  has_many :hotels
  validates :photo, presence:true
  validates :lugar, presence:true
  validates :pago, presence:true
  validates :total, presence:true
  validates :status, presence:true
  validates :start_time, uniqueness: { scope: :lugar , notice: "Fecha Ya utilizada" }
  validates :end_time, uniqueness: { scope: :lugar, notice:"Fecha no valida"}



end
