class Admin::Document < ApplicationRecord
  belongs_to :rental

  validates :file_url, presence: true
end
