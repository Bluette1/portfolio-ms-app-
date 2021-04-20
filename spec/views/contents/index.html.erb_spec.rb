require 'rails_helper'

RSpec.describe 'contents/index', type: :view do
  it 'renders the correct template' do
    render
    expect(response).to render_template('index')
    expect(rendered).to match Regexp.new('Projects')
  end
end
