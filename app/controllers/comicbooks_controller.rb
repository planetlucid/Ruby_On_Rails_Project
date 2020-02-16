class ComicbooksController < ApplicationController
  def index
    @comicbooks = Comicbook.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end
end
