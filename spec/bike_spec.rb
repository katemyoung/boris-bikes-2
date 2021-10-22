require './lib/bike.rb'

describe Bike do
  it 'expects Bike instance to respond to the method working?' do
<<<<<<< HEAD
    it { is_expected.to respond_to :working? }
=======
    bike = Bike.new
    expect { bike }.to respond_to (:working?)
>>>>>>> 6b7a823bd8f0dad106efca70589d49f7793d4b17
  end
end
