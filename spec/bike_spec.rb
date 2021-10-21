require './lib/boris_bikes'

describe Bike do
  it 'expects Bike instance to respond to the method working?' do
    bike = Bike.new
    expect { bike }.to respond_to (:working?)
  end
end
