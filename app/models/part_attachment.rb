class PartAttachment < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :part
end
