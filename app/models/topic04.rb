class Topic04 < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comment04s
  validates :title, presence: true
end
