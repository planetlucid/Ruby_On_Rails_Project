class Comicbook < ApplicationRecord
  belongs_to :person
  belongs_to :squad
  validates :title, presence: true, uniqueness: { scope: :person }

  def person_attributes=(args)
    self.person = Person.find_or_create_by(args)
  end

  def squad_attributes=(args)
    self.squad = Squad.find_or_create_by(args)
  end
end


