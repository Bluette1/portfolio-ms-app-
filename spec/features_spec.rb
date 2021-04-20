require 'rails_helper'

RSpec.describe 'Features', type: :feature do
  before :each do
    visit root_path
  end
  scenario 'user can see the portfolio features' do
    expect(page).to have_content('Projects')
    expect(page).to have_content('About')
    expect(page).to have_content('Contact')
  end

  scenario 'user can get resume' do
    href = 'https://docs.google.com/document/d/1kwbY43uIdD2Cd1YKiO68z1PsbY51JyVQUV_QWI75DOY/edit?usp=sharing'
    page.should have_selector "a[href='#{href}']", text: 'Get my resume'
  end

  scenario 'user can access github page' do
    href = 'https://github.com/Bluette1'
    page.should have_selector "a[href='#{href}']"
  end

  scenario 'user can see the portfolio' do
    visit details_path

    expect(page).to have_content('Exceptional design for ambitious companies')
    href = '/#portfolio'
    page.should have_selector "a[href='#{href}']", text: 'See live'
    href = 'https://github.com/Bluette1'
    page.should have_selector "a[href='#{href}']", text: 'See source'
  end
end
