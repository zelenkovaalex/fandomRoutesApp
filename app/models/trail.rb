class Trail < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :fandom, optional: true

  has_many :comments, dependent: :destroy
  has_many :ratings
  has_many :favourites
  has_many :tag_selecteds
  has_many :tags, through: :tag_selecteds
  has_one_attached :image

  validates :title, :description, presence: true
  mount_uploader :image, ImageUploader

end