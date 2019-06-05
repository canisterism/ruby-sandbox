def get_vehicle
  Vehicle.new
end

class Engine
  def start
    puts "started"
  end
  def stop
    puts "stopped"
  end
end

class Car
  def initialize
    @engine = Engine.new
  end
  def sunday_drive
    @engine.start
    # boooooom
    @engine.stop
  end
  end
