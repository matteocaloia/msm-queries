class ActorsController < ApplicationController
  def index
    render({:template => "actor_templates/list"})
  end

  def show
    actor_id = params["actor_id"]

    @actor = Actor.where({:id => actor_id}).at(0)

    render({:template => "actor_templates/details"})

  end

end
