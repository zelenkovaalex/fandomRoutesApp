class User < ApplicationRecord
  has_many :trails
  has_many :favourites
  has_many :ratings
  has_many :comments
  has_many :fandoms, through: :routes
end