class Topic04 < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comment04s
  validates :title, presence: true
  has_one_attached :avatar # 追記
end
