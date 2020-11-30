class Appointment < ApplicationRecord
  after_create :create_chatroom
  belongs_to :user
  belongs_to :garden
  has_one :chatroom
  validates :date, :quantity, presence: true
  validates :quantity, numericality: true
  validates :quantity, numericality: { greater_than: 0 }

  private

  def create_chatroom
    Chatroom.create(appointment: self)
  end
end
