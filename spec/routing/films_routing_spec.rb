require 'spec_helper'

describe FilmsController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get('/films')).to route_to(controller: 'films', action: 'index')
    end
    it 'routes to #show' do
      expect(get('/films/9')).to route_to(controller: 'films', action: 'show', id: '9')
    end
  end
end
