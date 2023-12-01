class Event < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :participants, dependent: :destroy

  PERIOD = ['Morning', 'Afternoon', 'Night']
  CATEGORY = ['Nightlife', 'Visual Arts', 'Sports', 'Culinary', 'Sightseeing', 'Religious', 'Outdoors']

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, presence: true
  validates :period, presence: true, inclusion: { in: PERIOD }
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
