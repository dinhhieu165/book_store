class Book < ApplicationRecord
  belongs_to :author
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  delegate :name, to: :author, allow_nil: true, prefix: :author
  has_many :book_categories, dependent: :destroy
  has_many :categories, through: :book_categories
  mount_uploader :cover_image, PictureUploader
  scope :desc_at_create, -> {order(created_at: :desc)}
   scope :searchs, -> (content){
    left_outer_joins(:book_categories, :categories).where("books.title LIKE ? OR categories.name LIKE ?", "%#{content}%", "%#{content}%").distinct
  }
end
