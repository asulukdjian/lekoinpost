class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :garden
  validates :date, :quantity, presence: true
  validates :quantity, numericality: true
  validates :quantity, numericality: { greater_than: 0 }
end
