class Location < ApplicationRecord
  belongs_to :city
  belongs_to :category
  has_many :events

  def name_city
    "#{self.name}, located in #{self.city.name_state}"
  end
end
