require 'rails_helper'

RSpec.feature 'Hide Columns', type: :feature do
  before do
    basic_auth('admin', 'password')
  end

  scenario 'User can hide table columns' do
    visit root_path
    click_link 'Select Columns'
    expect(page).to have_content 'Select Columns'
    click_link 'hide version'
    click_link 'hide current_holdings'
    click_link 'hide market_value'
    click_link 'show market_value'

    click_link 'Back to records'

    expect(page).to_not have_content 'version'
    expect(page).to_not have_content 'current_holdings'
    expect(page).to have_content 'market_value'
  end
end
