class Sendpro < ApplicationRecord
  validates :start_time, uniqueness: { scope: :lugar , notice: "Fecha Ya utilizada" }
  validates :end_time, uniqueness: { scope: :lugar, notice:"Fecha no valida"}
  has_many :promotions
  has_many :status
end
