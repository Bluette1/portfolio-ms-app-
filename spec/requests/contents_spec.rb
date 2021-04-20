require 'rails_helper'

RSpec.describe '/contents', type: :request do
  describe 'GET /index' do
    it 'renders a successful response' do
      get contents_url
      expect(response).to be_successful
    end
  end

  describe 'GET /' do
    it 'renders a successful response' do
      get contents_url
      expect(response).to be_successful
    end
  end

  describe 'GET /details' do
    it 'renders a successful response' do
      get details_url
      expect(response).to be_successful
    end
  end
end
