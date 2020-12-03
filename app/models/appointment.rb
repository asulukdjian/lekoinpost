class Appointment < ApplicationRecord
  after_create :create_chatroom
  # after_create_commit :compute_score
  # after_save :compute_score
  # after_update_commit :compute_score
  # after_update_commit :compute_score, if: :saved_change_to_quantity?
  # after_update_commit :compute_score, if: :saved_change_to_description?
  belongs_to :user
  belongs_to :garden
  has_one :chatroom, dependent: :destroy
  validates :date, :quantity, presence: true
  validates :quantity, numericality: true
  validates :quantity, numericality: { greater_than: 0 }

  # def compute_score
  #   points = 0
  #   if description.downcase == "organic waste"
  #     points = 1
  #   elsif description.downcase == "compost"
  #     points = 3
  #   end
  #   self.score = self.quantity * points
  # end

  def validated_score
    # return 0 unless !self.delivered?
    if !self.delivered?
      0
    else
      score
    end
  end

  def display_score_card
    points = 0
    if description.downcase == "organic waste"
      points = 1
    elsif description.downcase == "compost"
      points = 3
    end
    return quantity * points
  end

  private

  def create_chatroom
    Chatroom.create(appointment: self)
  end
end
