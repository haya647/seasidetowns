class Comment02 < ApplicationRecord
  mount_uploader :picture, PictureUploader
    belongs_to :topic02
    has_one_attached :avatar # 追記
end
