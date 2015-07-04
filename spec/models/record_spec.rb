require 'rails_helper'

RSpec.describe Record, type: :model do
  it 'has a valid Factory' do
    expect(FactoryGirl.build(:record)).to be_valid
  end

  it 'has a seach function' do
    expect(Record).to respond_to :search
  end
end
