require 'rails_helper'

RSpec.describe ContentsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/contents').to route_to('contents#index')
    end

    it 'routes to #index' do
      expect(get: '/').to route_to('contents#index')
    end

    it 'routes to #show' do
      expect(get: '/details').to route_to('contents#show')
    end
  end
end
