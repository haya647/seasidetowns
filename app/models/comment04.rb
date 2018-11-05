class Comment04 < ApplicationRecord
  mount_uploader :picture, PictureUploader
    belongs_to :topic04
    has_one_attached :avatar # 追記
end
