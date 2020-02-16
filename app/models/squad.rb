class Squad < ApplicationRecord
    has_many :comicbooks
    has_many :persons, through: :books

    validates :name, presence: true, uniqueness: true
end
