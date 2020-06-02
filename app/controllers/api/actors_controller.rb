class Api::ActorsController < ApplicationController
  def find_actor
    @display = Actor.find_by(id: 1)
    render "display_actor.json.jb"
  end

  def find_actor_query
    @id = params['id']
    @display = Actor.find_by(id: @id)
    render "display_actor.json.jb"
  end

  def find_actor_segment
    @id = params[:id]
    @segment = Actor.find_by(id: @id)
    render "actors_segment.json.jb"
  end
end
