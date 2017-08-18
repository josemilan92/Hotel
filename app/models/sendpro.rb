class Sendpro < ApplicationRecord
  validates :start_time, uniqueness: { scope: :lugar , notice: "Fecha Ya utilizada" }
  validates :end_time, uniqueness: { scope: :lugar, notice:"Fecha no valida"}

  attr_accessor     :lugar, :pago, :total, :status, :user_id, :photo, :promotion_id
end
