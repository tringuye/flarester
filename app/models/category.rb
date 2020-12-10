class Category < ApplicationRecord
  has_many :locations
  has_many :events
end
