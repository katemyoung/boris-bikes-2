class DockingStation
  attr_reader :bike  
  
  def initialize
    @dock = []
  end
  
  def release_bike
    if @dock == [] 
      raise 'No bikes available'
    else
      Bike.new
    end
  end

  def dock(bike)
    if @dock.length >= 1
      raise 'Docking Station full!'
    else
      @bike = bike 
      @dock << bike
    end
  
  end
end

class Bike
  def working?
    true
  end
end


docking_station = DockingStation.new
    20.times { docking_station.dock Bike.new }
   p @dock