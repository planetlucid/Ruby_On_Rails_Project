class Comicbook < ApplicationRecord
  belongs_to :person
  belongs_to :squad
  validates :title, presence: true, uniqueness: { scope: :person }

  def self.search(search)
    if search
      comicbook_type = Comicbook.find_by(title: search)
      if comicbook_type
        self.where(comicbook_id: comicbook_type)
      else
        @comicbooks = Comicbook.all
      end
    else
      @comicbooks = Comicbook.all
    end
  end


  def person_attributes=(args)
    self.person = Person.find_or_create_by(args)
  end

  def squad_attributes=(args)
    self.squad = Squad.find_or_create_by(args)
  end
  
 
 


end


