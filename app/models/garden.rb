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

  def score_for(user)
    # appointments.where(user: user).map(&:score).compact.sum

    user_appointments = appointments.where(user: user)
    # user_appointments.map(&:score)

    user_scores = user_appointments.map do |app|
      app.score
    end

    return user_scores.compact.sum
  end

  # def missing_points
  #   missing_points = reward_score - user_scores
  #   return missing_points
  # end
end
