class Admin::Rental < ApplicationRecord
  belongs_to :customer
  belongs_to :dress_variant
  has_one :fine
  has_one :document
  has_many :transactions

  validates :customer, presence: true
  validates :dress_variant, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_cost, numericality: { greater_than_or_equal_to: 0 }
  validate :end_date_after_start_date
end
