class RobotsController < ApplicationController
  def index
    @robots_to_extinguish = Robot.where(has_sentience: true).where(on_fire: true).all
    @robots_to_recycle = Robot.where('number_of_rotors<? or number_of_rotors>? or color=? or ( has_wheels=? and has_tracks=? ) or ( has_wheels=? and rusty=? ) or ( has_sentience=? and loose_screws=?) or on_fire=?', 3,8,'blue', true, true, true, true, true, true, true).all
    remaining_robots = Robot.all - @robots_to_extinguish.to_a - @robots_to_service.to_a
    @robots_for_factory_qa = remaining_robots.to_a - Robot.where('( rusty=? and loose_screws=?) or paint_scratched=?', true, true, true)
    @robots_for_factory_second = Robot.where('( rusty=? and loose_screws=?) or paint_scratched=?', true, true, true) - remaining_robots
    respond_to do |format|
      format.json{
        render json: { extinguish: @robots_to_extinguish,
                        recycle: @robots_to_recycle,
                        factory_second: @robots_for_factory_second,
                        ship: @robots_for_factory_qa
                      }
      }
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def extinguish
  end

  def recycle
  end
end
