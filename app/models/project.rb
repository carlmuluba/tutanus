class Project < ApplicationRecord
	has_one :team
	has_many :collections
	has_many :itens #, :through => :collections
	has_many :productors
	has_many :professionals #, :through => :teams
	has_many :activities #, :through => :teams
    has_many :proj_attachments #, -> {order("created_at DESC")}
    accepts_nested_attributes_for :proj_attachments, allow_destroy: true
    accepts_nested_attributes_for :team, allow_destroy: true
    accepts_nested_attributes_for :itens, allow_destroy: true
    accepts_nested_attributes_for :professionals, allow_destroy: true
    accepts_nested_attributes_for :activities, allow_destroy: true
    accepts_nested_attributes_for :collections, allow_destroy: true
	#validates :proj_pics, file_size: { less_than: 1.megabytes }

end
