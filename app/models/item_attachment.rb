class ItemAttachment < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :iten
end
