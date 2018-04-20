class Publication < ApplicationRecord
	has_many :publication_attachments #, -> {order("created_at DESC")}
    accepts_nested_attributes_for :publication_attachments, allow_destroy: true
	#belongs_to :project
end
