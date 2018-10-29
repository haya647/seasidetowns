class Topic02 < ApplicationRecord
   mount_uploader :picture, PictureUploader
   has_many :comment02s
   validates :title, presence: true
end
