class Topic < ApplicationRecord
   mount_uploader :picture, PictureUploader
   has_many :comments
   validates :title, presence: true
   
end
