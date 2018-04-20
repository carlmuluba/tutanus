class Publication < ApplicationRecord
	has_many :partner_attachments #, -> {order("created_at DESC")}
    accepts_nested_attributes_for :partner_attachments, allow_destroy: true
	#belongs_to :project
end
