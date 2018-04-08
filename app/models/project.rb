class Project < ApplicationRecord
	has_one :team
	has_many :collections
	has_many :itens, :through => :collections
	has_many :productors
	has_many :professionals, :through => :teams
	has_many :activities, :through => :teams
	mount_uploaders :images, PictureUploader # mount the uploaders
	#validates :proj_pics, file_size: { less_than: 1.megabytes }
end
