class HerosController < ApplicationController
  before_action :set_hero, only: [:show]

  def index
    @heros = Hero.all
  end

  def show
  end

  def new
    @hero = Hero.new
    @hero.team = Team.new
  end

  def create
    @hero = Hero.new(hero_params)
    @hero.team_id = 2

    if @hero.save
      redirect_to hero_path(@hero)
    else
      render :new
    end
  end

  private

  def set_hero
    unless @hero = Hero.find_by_id(params[:id])
      redirect_to heros_path
    end
  end

  def hero_params
    params.require(:hero).permit(:title, team_attributes: [:name])
  end
end