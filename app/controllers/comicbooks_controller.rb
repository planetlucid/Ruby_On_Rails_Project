class ComicbooksController < ApplicationController
  before_action :set_comicbook, only: [:show]


  def index
    if params[:query]
      @comicbooks = Comicbook.where('lower(description) LIKE ?', '%#{params[:query].downcase}%')
    else
      @comicbooks = Comicbook.all
    end
    # @comicbooks = Comicbook.all
  end 

  # def search
  #   @comicbooks = Comicbook.where("title LIKE ?", OR "plot LIKE ?", "%#{search}%", "%#{search}%")

  # end

  def create
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
    @comicbook = Comicbook.find(params[:id])
    @comicbook.update(comicbook_params)
    redirect_to comicbooks_path(@comicbook)
  end

  def destroy
    @comicbook = Comicbook.find(params[:id])
    @comicbook.destroy
    redirect_to comicbooks_url
  end

  private

  def set_comicbook
    unless @comicbook = Comicbook.find_by_id(params[:id])
      redirect_to comicbooks_path
    end
  end

  def comicbook_params
    params.require(:comicbook).permit(:search, :title, person_attributes: [:name], squad_attributes: [:name])
  end

 
  
  # def destroy
  #   @comicbook = Comicbook.find(params[:id])
  #   @comicbook.destroy
  #   redirect_to comicbooks_path
  # end
end
