require 'rails_helper'

RSpec.describe 'contents/show', type: :view do
  it 'renders the correct template' do
    render
    expect(response).to render_template('show')
    expect(rendered).to match Regexp.new('Exceptional design for ambitious companies')
  end
end
