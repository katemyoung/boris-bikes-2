require './lib/boris_bikes'

describe DockingStation do

it 'expects a DockingStation instance to respond_to the method release_bike' do
  docking_station = DockingStation.new
  expect { docking_station.release_bike }.not_to raise_error
end

it 'expects Bike to respond to working?' do
  bike = Bike.new
  expect(bike).to respond_to(:working?) 
end


it 'expects the result of DockingStation.release_bike.working? to return true' do
  docking_station = DockingStation.new
  bike = docking_station.release_bike
  expect(bike.working?).to eq true
end

it 'expect docking_station.dock(bike) not to return error' do
 docking_station = DockingStation.new
 bike = docking_station.release_bike
 expect { docking_station.dock(bike) }.not_to raise_error
end

it 'expected to return bike' do 
 docking_station = DockingStation.new
 bike = docking_station.release_bike
 expect(docking_station.dock(bike)).to eq bike
 end

# it 'if you call bike on docking_station it responds to bike'
# docking_station = DockingStation.new
# bike = docking_station.release_bike
it { is_expected.to respond_to(:bike) }
end
