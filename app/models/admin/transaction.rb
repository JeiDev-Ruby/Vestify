class Admin::Transaction < ApplicationRecord
  belongs_to :rental

  validates :amount, numericality: { greater_than_or_equal_to: 0 }
  validates :transaction_type, presence: true
end
