class PublicationAttachment < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :publication
end
