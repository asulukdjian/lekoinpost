class Appointment < ApplicationRecord
  after_create :create_chatroom
  belongs_to :user
  belongs_to :garden
  has_one :chatroom
  validates :date, :quantity, presence: true
  validates :quantity, numericality: true
  validates :quantity, numericality: { greater_than: 0 }

  def score
    return unless self.delivered?
    if description.downcase == "organic waste"
      points = 1
    elsif description.downcase == "compost"
      points = 3
    end
    return self.quantity * points
  end
  
  private
  
  def create_chatroom
    Chatroom.create(appointment: self)
  end
end
