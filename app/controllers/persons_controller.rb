class PersonsController < ApplicationController
  # byebug
  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

end
