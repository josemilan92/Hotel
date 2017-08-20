class Product < ApplicationRecord
  before_destroy :ensure_not_referenced_by_any_line_item
  mount_uploader :photo, PhotoUploader
  validates :title, :description, :photo, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true

  private
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
