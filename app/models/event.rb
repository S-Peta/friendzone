class Event < ApplicationRecord
  belongs_to :user
  has_many :messages

  PERIOD = ['Morning', 'Afternoon', 'Night']
  CATEGORY = ['Music', 'Nightlife', 'Perfoming & Visual Arts', 'Sports', 'Hobbies', 'Business', 'Food & Drink', 'Historic', 'Religious', 'Outdoors']

  validates :name, presence: true
  validates :period, presence: true, inclusion: { in: PERIOD }
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
