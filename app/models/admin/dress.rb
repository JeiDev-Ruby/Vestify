class Admin::Dress < ApplicationRecord
  belongs_to :category
  has_many :dress_variants
  has_many :rentals, through: :dress_variants

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
