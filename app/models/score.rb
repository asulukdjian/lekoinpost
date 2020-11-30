class Score < ApplicationRecord
  belongs_to :user
  belongs_to :garden
  has_many :appointments, through: :gardens

  validates :score, numericality: { only_integer: true }
end
