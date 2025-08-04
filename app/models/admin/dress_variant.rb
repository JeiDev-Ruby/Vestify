class Admin::DressVariant < ApplicationRecord
  belongs_to :dress
  belongs_to :size
end
