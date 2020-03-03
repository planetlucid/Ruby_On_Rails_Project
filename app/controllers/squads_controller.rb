class SquadsController < ApplicationController
  def index
    @squads = Squad.all
  end

  def show
    @squad = Squad.find(params[:id])
    # binding.pry
  end


end
