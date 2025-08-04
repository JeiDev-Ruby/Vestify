class Admin::Category < ApplicationRecord
  has_many :dresses

  validates :name, presence: true, uniqueness: true
end
