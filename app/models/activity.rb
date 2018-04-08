class Activity < ApplicationRecord
	
	mount_uploaders :images, PictureUploader # mount the uploaders
end
