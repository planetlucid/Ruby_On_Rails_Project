class Comic < ActiveRecord::Base
    has_many :teams
    has_many :heros, through: :teams
    #belongs_to :user
end