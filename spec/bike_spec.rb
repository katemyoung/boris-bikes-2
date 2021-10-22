require './lib/bike.rb'

describe Bike do
  it 'expects Bike instance to respond to the method working?' do
    it { is_expected.to respond_to :working? }
  end
end
