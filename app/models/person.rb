class Person < ApplicationRecord
    has_many :comicbooks
    has_many :squads, through: :books

    validates :name, presence: true, uniqueness: true
end
