class Garden < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  validates :name, :description, :address, presence: true
  has_many_attached :photos
end
