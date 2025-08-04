class Admin::DressVariant < ApplicationRecord
  belongs_to :dress
  belongs_to :size
  has_many :rentals

  validates :sku, presence: true, uniqueness: true
  validates :color, presence: true
  validates :condition, presence: true
  validates :status, presence: true, inclusion: { in: %w[available] }
  validates :daily_rate, numericality: { greater_than: 0 }
end
