class DockingStation
  attr_reader :bike  
  
  def initialize
    @dock = []
  end
  
  def release_bike
    if @dock == [] 
      fail 'No bikes available'
    end
    Bike.new
  end

  def dock(bike)
    # @bike = bike 
    @dock << bike
  end
end

class Bike
  def working?
    true
  end
end

