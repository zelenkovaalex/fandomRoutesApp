class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :trails
end