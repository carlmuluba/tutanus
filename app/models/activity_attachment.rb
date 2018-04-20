class ActivityAttachment < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :activity
end
