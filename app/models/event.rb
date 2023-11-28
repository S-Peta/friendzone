class Event < ApplicationRecord
  belongs_to :user

  PERIOD = ['Morning', 'Afternoon', 'Night']
  CATEGORY = ['Music', 'Nightlife', 'Perfoming & Visual Arts', 'Sports', 'Health', 'Hobbies', 'Business', 'Food & Drink']

  validates :name, presence: true
  validates :period, presence: true, inclusion: { in: PERIOD }
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
