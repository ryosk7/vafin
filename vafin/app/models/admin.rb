class Admin < ApplicationRecord
  has_many :events, class_name: Event, foreign_key: :event_id
end
