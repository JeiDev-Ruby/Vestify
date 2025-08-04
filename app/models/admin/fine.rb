class Admin::Fine < ApplicationRecord
  belongs_to :rental

  validates :amount, numericality: { greater_than: 0 }
  validates :reason, presence: true
end
