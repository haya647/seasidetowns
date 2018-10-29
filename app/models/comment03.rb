class Comment03 < ApplicationRecord
  mount_uploader :picture, PictureUploader
    belongs_to :topic03
end
