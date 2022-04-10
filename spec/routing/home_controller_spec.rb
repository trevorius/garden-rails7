require "rails_helper"

describe 'HomeController', type: :routing do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end
  describe 'index' do
    context 'when going to root' do
      it 'roots to home#index' do
        expect(get root_path).to route_to('home#index')
      end
    end
    context 'when going to home/index' do
      it 'roots to home#index' do
        expect(get 'home/index').to route_to('home#index')
      end
    end
  end
end
