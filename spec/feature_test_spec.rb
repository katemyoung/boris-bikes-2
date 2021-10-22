require 'boris_bikes'

describe 'docking station full' do
  it 'gives error if dock full' do
    docking_station = DockingStation.new
    20.times { docking_station.dock Bike.new }
    @dock
    expect { docking_station.dock Bike.new }.to raise_error(StandardError)
  end
end

