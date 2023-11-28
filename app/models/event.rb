class Event < ApplicationRecord
  belongs_to :user
  has_many :messages

  PERIOD = ['Morning', 'Afternoon', 'Night']

  validates :name, presence: true
  validates :period, presence: true, inclusion: { in: PERIOD }
end
