require './lib/boris_bikes'

describe DockingStation do

it { is_expected.to respond_to :release_bike }

it 'expects Bike to respond to working?' do
  bike = Bike.new
  expect(bike).to respond_to(:working?) 
end


it 'expects the result of DockingStation.release_bike.working? to return true' do
  docking_station = DockingStation.new
  bike = Bike.new
  expect(bike.working?).to eq true
end

it { is_expected.to respond_to(:dock).with(1).argument }

it 'expected to return bike' do 
 docking_station = DockingStation.new
 bike = Bike.new

 end

# it 'if you call bike on docking_station it responds to bike'
# docking_station = DockingStation.new
# bike = docking_station.release_bike
it { is_expected.to respond_to(:bike) }

it 'expects docking_station.bike to return bike' do
  docking_station = DockingStation.new
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end

it 'raisesd an error if no bikes available' do
  # arrange
  station = DockingStation.new
  expect {station.release_bike}.to raise_error(StandardError)
end

it 'raises error if you try to dock a bike when docking station is full' do
  station = DockingStation.new
  bike_one = Bike.new
  bike_two = Bike.new
  station.dock(bike_one)
  expect { station.dock(bike_two) }.to raise_error(StandardError)
end


end
