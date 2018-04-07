class Project < ApplicationRecord
	has_one :team
	has_many :collections
	has_many :itens, :through => :collections
	has_many :productors
	has_many :professionals, :through => :teams
	has_many :activities, :through => :teams
end
