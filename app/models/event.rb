class Event < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_one_attached :photo

  PERIOD = ['Morning', 'Afternoon', 'Night']
  CATEGORY = ['Nightlife', 'Visual Arts', 'Sports', 'Culinary', 'Sightseeing', 'Cultural', 'Outdoors']

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, presence: true
  validates :period, presence: true, inclusion: { in: PERIOD }
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :location, presence: true
  validates :event_date, presence: true
  validates :photo, presence: true

  include PgSearch::Model
    pg_search_scope :search_by_name,
      against: [:name],
      using: {
        tsearch: { prefix: true }
      }

end
