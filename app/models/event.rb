class Event < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :participants, dependent: :destroy

  PERIOD = ['Morning', 'Afternoon', 'Night']
  CATEGORY = ['Music', 'Nightlife', 'Perfoming & Visual Arts', 'Sports', 'Hobbies', 'Business', 'Food & Drink', 'Historic', 'Religious', 'Outdoors']

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, presence: true
  validates :period, presence: true, inclusion: { in: PERIOD }
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
