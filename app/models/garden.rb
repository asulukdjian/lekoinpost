class Garden < ApplicationRecord
  include Abyme::Model

  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :products, dependent: :destroy, inverse_of: :garden
  validates :name, :description, :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many_attached :photos

  abyme_for :products
end
