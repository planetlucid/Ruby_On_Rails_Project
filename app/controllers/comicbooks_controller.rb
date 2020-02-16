class ComicbooksController < ApplicationController
  def index
    @comicbooks = Comicbook.all
  end

  def create
    @comicbook = Comicbook.new(comicbook_params)
    if @comicbook.save
      redirect_to comicbooks_url
    else
      @errors = @comicbook.errors.full_messages
      render :new
    end
  end

  def new
    @comicbook = Comicbook.new
    @comicbook.person = Person.new
    @comicbook.squad = Squad.new
  end

  def edit
  end

  def update
  end

  def comicbook_params
    params.require(:comicbook).permit(:title, :person_attributes => [:name], :squad_attributes => [:name])
  end
end
