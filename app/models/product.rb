class Product < ApplicationRecord
  belongs_to :garden
  validates :name, :category, presence: true
  
  CATEGORIES = ["Flowers", "Fruits", "Vegetables"]

  def self.categories
    CATEGORIES
  end
end

# Product.categories
# Product::CATEGORIES
