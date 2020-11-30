class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :garden
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
end
