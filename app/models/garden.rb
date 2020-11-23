class Garden < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  validates :description, :address, presence: true
end
