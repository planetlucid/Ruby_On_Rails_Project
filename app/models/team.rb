class Team < ActiveRecord::Base
    belongs_to :hero
    belongs_to :comic
end