class Project < ApplicationRecord
	has_many :teams, foreign_key: :tm_project_id
	has_many :collections, foreign_key: :coll_project_id 
	has_many :itens, foreign_key: :it_project_id 
	has_many :productors, foreign_key: :prod_project_id
	has_many :professionals, foreign_key: :prof_project_id 
	has_many :activities, foreign_key: :act_project_id 
    has_many :proj_attachments #, -> {order("created_at DESC")}
    accepts_nested_attributes_for :proj_attachments, allow_destroy: true
    accepts_nested_attributes_for :teams, allow_destroy: true
    accepts_nested_attributes_for :itens, allow_destroy: true
    accepts_nested_attributes_for :professionals, allow_destroy: true
    accepts_nested_attributes_for :activities, allow_destroy: true
    accepts_nested_attributes_for :collections, allow_destroy: true
	#validates :proj_pics, file_size: { less_than: 1.megabytes }

end
