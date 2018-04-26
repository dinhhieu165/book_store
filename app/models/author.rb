class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  scope :desc_at_create, -> {order(created_at: :desc)}
end
