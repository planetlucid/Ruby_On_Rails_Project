class ComicbooksController < ApplicationController
  before_action :set_comicbook, only: [:show]
  has_scope :search

  def index
    
      if params[:person_id]
        # This is the nested route, /person/:author_id/comicbooks
        person = Person.find_by(id: params[:person_id])
        @comicbooks = person.comicbooks
      elsif params[:search].present?
        @comicbooks = Comicbook.filter_by_name(params[:search]) 
      else 
        @comicbooks = Comicbook.all
    end
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

  def show
    @comicbook = Comicbook.find(comicbook_params[:id])
  end

  def new
    @comicbook = Comicbook.new(person_id: params[:person_id])
    @comicbook.person = Person.new
    @comicbook.squad = Squad.new
  end

  def edit
    if params[:person_id]
      person = Person.find_by(id: params[:person_id])
      if person.nil?
        redirect_to persons_path, alert: "person not found."
      else
        @comicbook = person.comicbooks.find_by(id: params[:id])
        redirect_to person_comicbooks_path(person), alert: "comicbook not found." if @comicbook.nil?
      end
    else
      @comicbook = Comicbook.find(params[:id])
    end
  end

  # def edit
  #   unless @comicbook = Comicbook.find_by_id(params[:id])
  #     @error = ['Comicbook Not Found']
  #     redirect_to comicbooks_url
  #   end
  # end

  def update
    @comicbook = Comicbook.find(params[:id])
    @comicbook.update(comicbook_params)
    redirect_to comicbooks_path(@comicbook),
    alert: "Edited"
    
  end

  def destroy
    @comicbook = Comicbook.find(params[:id])
    @comicbook.destroy
    redirect_to comicbooks_url,
    alert: "Deleted"
  end

  private

  def set_comicbook
    unless @comicbook = Comicbook.find_by_id(params[:id])
      redirect_to comicbooks_path
    end
  end

  def comicbook_params
    params.require(:comicbook).permit(:person_id, :starts_with, :title, :search, :comicbook_id, :name, person_attributes: [:name], squad_attributes: [:name])
  end

 
  
  # def destroy
  #   @comicbook = Comicbook.find(params[:id])
  #   @comicbook.destroy
  #   redirect_to comicbooks_path
  # end
end
