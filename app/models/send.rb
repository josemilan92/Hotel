class Send < ApplicationRecord
  has_many :hotels
  belongs_to :hotels
  belongs_to :categories
  belongs_to :estados
  belongs_to :pagos
  validates :start_time, uniqueness: { scope: :lugar , notice: "Fecha Ya utilizada" }
  validates :end_time, uniqueness: { scope: :lugar, notice:"Fecha no valida"}

  attr_accessor     :lugar, :pago, :total, :estatus, :user_id, :photo, :hotel_id, :fechaPri, :fechaUlt


end
