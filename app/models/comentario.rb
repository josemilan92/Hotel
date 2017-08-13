class Comentario < ApplicationRecord
  attr_accessor :cuerpo
  belongs_to :hotel
end
