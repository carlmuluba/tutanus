class MultiplePic < ApplicationRecord
   mount_uploader :image, PictureUploader
   belongs_to :project
end
