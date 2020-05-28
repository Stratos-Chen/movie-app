class Api::ActorsController < ApplicationController
  def find_actor
    @display = Actor.find_by(id: 1)
    render "display_actor.json.jb"
  end
end
