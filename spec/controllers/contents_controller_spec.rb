require 'rails_helper'

RSpec.describe ContentsController, type: :controller do
  describe 'GET index ' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'GET show ' do
    it 'returns a successful response' do
      get :show
      expect(response).to be_successful
    end

    it 'renders the show template' do
      get :show
      expect(response).to render_template('show')
    end
  end
end
