require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the RecordsHelper. For example:
#
# describe RecordsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe RecordsHelper, type: :helper do
  describe 'display_as' do
    it 'displays a string that looks like a date as Month Day, Year' do
      datetime = DateTime.new(2007, 12, 4, 0, 0, 0, 0)
      expect(display_as(datetime)).to eq 'December 04, 2007'
    end
    it 'displays a string as just a string' do
      could_be_a_string_but_its_not = 'John Meehan'
      expect(display_as(could_be_a_string_but_its_not)).to eq 'John Meehan'
    end
  end
end
