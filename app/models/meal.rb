class Meal < ApplicationRecord
  has_many :food_category_meals
  has_many :meals_ingredients
  has_many :ingredients, through: :meals_ingredients
  has_many :order_meals
  belongs_to :restaurant
  monetize :price_cents
end
