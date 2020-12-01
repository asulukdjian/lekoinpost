class Garden < ApplicationRecord
  include Abyme::Model

  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :products, dependent: :destroy, inverse_of: :garden
  has_many_attached :photos
  validates :name, :description, :address, :reward_score, presence: true
  validates :reward_score, inclusion: {in:  15..40 }
  validates :photos, presence: true
  # validate :has_at_least_one_product

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  abyme_for :products
  # before_commit :has_at_least_one_product

  def score_for(user)
    # appointments.where(user: user).map(&:score).compact.sum

    user_appointments = appointments.where(user: user)
    # user_appointments.map(&:score)

    user_scores = user_appointments.map do |app|
      app.score
    end

    return user_scores.compact.sum
  end

  # def has_at_least_one_product
  #   products.count >= 1 ? errors.clear : errors.add(:products, "At least one product")
  # end
end
