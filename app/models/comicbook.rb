class Comicbook < ApplicationRecord
  belongs_to :person
  belongs_to :squad

  #validates :title, presence: true, uniqueness: true { scope: :person}
end
