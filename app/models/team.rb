class Team < ApplicationRecord
	mount_uploader :tm_cover, PictureUploader
	belongs_to :project
	belongs_to :collection
	has_many :professionals, foreign_key: :prof_team_id
	has_many :activities, foreign_key: :act_team_id
	#has_many :projects, foreign_key: :proj_team_id
    #accepts_nested_attributes_for :projects, allow_destroy: true
end
