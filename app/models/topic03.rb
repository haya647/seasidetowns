class Topic03 < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comment03s
  validates :title, presence: true
end
