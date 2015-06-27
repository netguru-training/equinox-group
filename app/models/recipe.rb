class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :recipe_items, dependent: :destroy
  has_many :ingredients, through: :recipe_items, dependent: :destroy
  accepts_nested_attributes_for :recipe_items
  accepts_nested_attributes_for :ingredients
  validates_presence_of :name, :category
end
