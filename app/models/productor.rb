class Productor < ApplicationRecord
	belongs_to :project
	has_many :productor_attachments #, -> {order("created_at DESC")}
    accepts_nested_attributes_for :productor_attachments, allow_destroy: true
	belongs_to :productor
end
