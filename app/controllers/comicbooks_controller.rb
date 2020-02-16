class ComicbooksController < ApplicationController
  def index
    @comicbooks = Comicbook.all
  end

  def create
  end

  def new
    @comicbook = Comicbook.new
  end

  def edit
  end

  def update
  end
end
