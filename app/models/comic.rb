class Comic < ActiveRecord::Base
    has_many :teams
    has_many :heroes, through: :teams
ends