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
  describe 'display_date' do
    it 'displays the date in Month Day, Year' do
      datetime = DateTime.new(2007, 12, 4, 0, 0, 0, 0)
      expect(display_date(datetime)).to eq 'December 04, 2007'
    end

  end
end
