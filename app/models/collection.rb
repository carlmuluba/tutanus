class Collection < ApplicationRecord
    mount_uploader :coll_cover, PictureUploader
    belongs_to :project
    has_many :itens, foreign_key: :it_collection_id
    has_many :teams, foreign_key: :tm_collection_id
    accepts_nested_attributes_for :itens, allow_destroy: true
end
