class Comment02 < ApplicationRecord
  mount_uploader :picture, PictureUploader
    belongs_to :topic02
end
