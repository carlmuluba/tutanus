class Team < ApplicationRecord
	belongs_to :project
	belongs_to :professionals
	belongs_to :activities
end
