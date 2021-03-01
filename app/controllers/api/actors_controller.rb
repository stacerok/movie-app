class Api::ActorsController < ApplicationController
  def single_actor_action
    number = params[:id]
    @actor = Actor.find_by(id: number)
    render "output.json.jb"
  end
end
