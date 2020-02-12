class Hero < ActiveRecord::Base
    has_many :teams
    has_many :comics, through: :teams
end