class RobotsController < ApplicationController
  def index
    @robots_to_extinguish = Robot.where(on_fire: true)
    @robots_to_recycle = Robot.recycle - @robots_to_extinguish
    remaining_robots = Robot.all - @robots_to_extinguish.to_a - @robots_to_recycle.to_a
    @robots_for_factory_qa = Robot.factory_qa.to_a - remaining_robots.to_a
    @robots_for_factory_second = Robot.factory_second.to_a - remaining_robots.to_a
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
    @robot = Robot.find(params[:id])

    respond_to do |format|
      if @robot.update(is_extinguished: true)
        format.json {
          render json: { message: "#{ @robot.name } is successfully extinguished" }
        }
      else
        format.json{
          render json: { message: 'Error while updating.' }
        }
      end
    end
  end

  def ship
    @robot = Robot.find(params[:id])
    @robot.is_shipped = true
    @robot.save
    respond_to do |format|
      format.json{
        render json: { message: "#{ @robot.name } is successfully Shipped" }
      }
    end
  end

  def

  def recycle
  end
end
