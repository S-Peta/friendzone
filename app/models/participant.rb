class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user, uniqueness: { scope: :event }
  validate :verify_event_owner

  private

  def verify_event_owner
    if user == event.user
      errors.add(:base, "user is already the creator of the event")
    end
  end
end
