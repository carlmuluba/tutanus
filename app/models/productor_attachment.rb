class ProductorAttachment < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :productor
end
