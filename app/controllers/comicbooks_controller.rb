class ComicbooksController < ApplicationController
  def index
    @comicbooks = Comicbook.all
  end

  def create
    # byebug
    @comicbook = Comicbook.new(comicbook_params)
    if @comicbook.save
      redirect_to comicbooks_url
    else
      @errors = @comicbook.errors.full_messages
      render :new
    end
  end

  def show
    @comicbook = Comicbook.find(comicbook_params[:id])
  end

  def new
    @comicbook = Comicbook.new
    @comicbook.person = Person.new
    @comicbook.squad = Squad.new
  end

  def edit
    unless @comicbook = Comicbook.find_by_id(params[:id])
      @error = ['Comicbook Not Found']
      redirect_to comicbooks_url
    end
  end

  def update
  end

  def comicbook_params
    params.require(:comicbook).permit(:title, person_attributes: [:name], squad_attributes: [:name])
  end

  def destroy
    @comicbook = Comicbook.find(params[:id])
    @comicbook.destroy
    redirect_to comicbooks_path, data: { confirm: "Really?" }
  end
end
