class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :trail
  validates :body, presence: true
  validates :content, presence: true
end