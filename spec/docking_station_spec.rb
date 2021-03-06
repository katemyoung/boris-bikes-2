require './lib/docking_station.rb'

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

<<<<<<< HEAD
it "it does not take out bikes when there is no bikes" do
  expect { subject.release_bike }.to raise_error "No bikes availble"
end

=======
it 'raisesd an error if no bikes available' do
  # arrange
  station = DockingStation.new
  expect {station.release_bike}.to raise_error(StandardError)
end

it 'raises error if you try to dock a bike when docking station is full' do
  station = DockingStation.new
  20.times { station.dock Bike.new }
  expect { station.dock(Bike.new) }.to raise_error(StandardError)
end

it 'doesn\'t raise an error if not is not full' do
  station = DockingStation.new
  15.times { station.dock Bike.new }
  expect { station.dock(Bike.new) }.not_to raise_error(StandardError)
end
>>>>>>> 6b7a823bd8f0dad106efca70589d49f7793d4b17
end
