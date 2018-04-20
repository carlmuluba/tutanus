class Team < ApplicationRecord
	belongs_to :project
	has_many :professionals
	has_many :activities
	mount_uploader :cover, PictureUploader
end
