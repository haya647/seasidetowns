class Topic < ApplicationRecord
   mount_uploader :picture, PictureUploader
   has_many :comments
   validates :title, presence: true
   has_one_attached :avatar # 追記

end
