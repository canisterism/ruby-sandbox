def get_vehicle
  Vehicle.new
end

class Vehicle
  def travel(distance)
    "I traveld #{distance} km."
  end

  def start_engine
    puts "engine has started"
  end
  def stop_engine
    puts "engine has stopped"
  end
end

class Car < Vehicle
  def sunday_drive
    start_engine
    # driving...
    stop_engine
  end
end
