class Comment04 < ApplicationRecord
  mount_uploader :picture, PictureUploader
    belongs_to :topic04
end
