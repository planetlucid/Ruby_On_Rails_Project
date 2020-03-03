class Squad < ApplicationRecord
    has_many :comicbooks
    has_many :people, through: :comicbooks

    validates :name, presence: true, uniqueness: true
end
