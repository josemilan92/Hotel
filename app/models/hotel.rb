class Hotel < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :comments
  has_many :sends
end
