class Topic03 < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comment03s
  validates :title, presence: true
  has_one_attached :avatar # 追記
end
