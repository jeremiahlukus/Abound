class Listing < ApplicationRecord
  has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "https://s3.amazonaws.com/abound/default.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  searchkick

  validates_presence_of :name, :description, :price

  validates :price, numericality: { greater_than: 0 }

  belongs_to :user
  has_many :orders
  has_many :shopping_cart_items
end

