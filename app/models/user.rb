class User < ApplicationRecord
  belongs_to :city
  has_many :user_events
  has_many :events, through: :user_events
  has_secure_password
  
  validates :username, presence: true, uniqueness: true
  validates :password, length: { in: 4..20 }

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def formatted_phone_number
    self.phone_number.insert(3, "-").insert(7, "-")
  end

  def total_attended
    self.events.count
  end

  def total_joined
    self.events.select do |event|
      event.users.first != self
    end.count
  end

  def total_coordinated
    self.events.select do |event|
      event.users.first == self
    end.count
  end

  def total_participants
    total_participants = self.events.reduce(0) do |sum, event|
      sum + event.users.count
    end
  end

  def average_number_of_participants
    (total_participants / total_attended.to_f)
  end

  def last_event
    last_event = nil
    last_attended = nil

    self.events.each do |event|
      if(!last_attended || last_attended < event.event_time.to_time)
        last_attended = event.event_time.to_time
        last_event = event
      end
    end
    last_event
  end

  def average_time_interval
    count = 0
    sum_of_interval = 0
  
    self.events.each do |event|
      sum_of_interval += event.time_interval.interval.to_i
      count += 1
    end
    sum_of_interval/count.to_f
  end

  def upcoming_events
    self.user_events.select {|user_event| user_event.event.event_time.to_time >= Time.now}.count
  end

end
