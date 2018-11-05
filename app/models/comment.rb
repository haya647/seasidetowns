class Comment < ApplicationRecord
  mount_uploader :picture, PictureUploader
    belongs_to :topic
    has_one_attached :avatar # 追記
end
