class Team < ActiveRecord::Base
    belongs_to :hero
    belongs_to :comic
    #belongs_to :user
end