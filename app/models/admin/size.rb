class Admin::Size < ApplicationRecord
  has_many :dress_variants

  validates :name, presence: true, uniqueness: true
end
