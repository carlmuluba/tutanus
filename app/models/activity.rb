class Activity < ApplicationRecord
	has_many :activity_attachments #, -> {order("created_at DESC")}
    accepts_nested_attributes_for :activity_attachments, allow_destroy: true
	belongs_to :project
	has_many :teams
	
end
