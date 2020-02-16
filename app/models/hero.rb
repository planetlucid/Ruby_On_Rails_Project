class Hero < ActiveRecord::Base
    has_many :teams
    has_many :comics, through: :teams
    #belongs_to :user
end