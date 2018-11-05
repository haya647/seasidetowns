class Comment03 < ApplicationRecord
  mount_uploader :picture, PictureUploader
    belongs_to :topic03
    has_one_attached :avatar # 追記
end
