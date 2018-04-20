class Collection < ApplicationRecord
   # has_many :images, :order => "created_at DESC"
   belongs_to :project
   belongs_to :iten
   has_many :teams
end
