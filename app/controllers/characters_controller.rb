class CharactersController < ApplicationController
  def index
  end
  def new
    @character = Character.new
  end

  def create
    Character.create(character_params)
    redirect_to characters_path
  end

  private
  def character_params
    params.require(:character).permit(:character,:read,:level).merge(user_id: current_user.id)
  end
end
