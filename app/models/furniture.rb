class Furniture < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :theme

  has_many :ar_list_items
  has_many :favourites, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  has_many :marketplace_ar_items
  has_one_attached :image

  monetize :price_cents
end
