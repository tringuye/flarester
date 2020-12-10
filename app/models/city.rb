class City < ApplicationRecord
  has_many :users
  has_many :events
  has_many :locations

  def name_state
    "#{self.name}, #{self.state}"
  end

end
