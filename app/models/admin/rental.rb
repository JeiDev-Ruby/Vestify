class Admin::Rental < ApplicationRecord
  belongs_to :customer
  belongs_to :dress_variant
end
