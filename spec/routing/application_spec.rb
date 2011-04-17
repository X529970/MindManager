require 'spec_helper'

describe 'ThoughtsController Routing' do

  it 'has a thoughts_path' do
    { :get => thoughts_path }.should route_to :controller => 'thoughts', :action => 'index'
  end
end
