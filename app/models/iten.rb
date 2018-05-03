class Iten < ApplicationRecord
	has_many :item_attachments #, -> {order("created_at DESC")}
    accepts_nested_attributes_for :item_attachments, allow_destroy: true
	belongs_to :project
	has_many :parts, foreign_key: :part_iten_id
end
