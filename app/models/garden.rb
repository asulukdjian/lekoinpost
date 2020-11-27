class Garden < ApplicationRecord
  include Abyme::Model

  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :products, dependent: :destroy, inverse_of: :garden
  has_many_attached :photos
  validates :name, :description, :address, presence: true
  validates :photos, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  abyme_for :products
end
