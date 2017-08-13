class Comment < ApplicationRecord
  attr_accessor :body
  belongs_to :hotel
end
