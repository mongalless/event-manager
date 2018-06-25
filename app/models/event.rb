class Event < ApplicationRecord
  validates :title, :start_date, :review_date, :end_date, :tags, presence: true
end
