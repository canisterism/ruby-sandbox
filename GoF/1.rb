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

class DieselEngine < Engine
end
class GasolineEngine < Engine
end

class Car
  def initialize(engine)
    @engine = engine
  end

  def switch_to_diesel
    @engine = DieselEngine.new
  end

  def switch_to_gasoline
    @engine = GasolineEngine.new
  end

  def sunday_drive
    @engine.start
    # boooooom
    @engine.stop
  end
  end
