# rails g rspec:view thoughts index

require 'spec_helper'

# describe 'thoughts/index.html.erb', :type => :request do
#   describe '#thoughts list' do
#     before :each do
#       @thoughts = [
#                     stub(:name => 'What do i think?'),
#                     stub(:name => 'Do i smell?')
#                   ]

#       assign(:thoughts, @thoughts)
#       visit thoughts_path
#     end

#     @thoughts.each do |thought|
#       it "Should have a thought of '#{thought}'" do
#         within 'ul#thoughts' do
#           page.find("li[contains(text(), '#{thought}')]").should_not be_nil
#         end
#       end
#     end
#   end
# end
