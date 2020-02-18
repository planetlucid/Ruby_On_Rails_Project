class PersonsController < ApplicationController
  # byebug
  def index
    @persons = Person.all
  end
end
