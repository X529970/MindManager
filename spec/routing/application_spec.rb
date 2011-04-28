require 'spec_helper'

describe ThoughtsController, 'Routing' do

  it 'has a thoughts_path' do
    { :get => thoughts_path }.
      should route_to :controller => 'thoughts', :action => 'index'
  end

  it 'has a redirect_path' do
    { :get => redirect_path }.
      should route_to :controller => 'thoughts', :action => 'redirect'
  end

  it 'has a new_path' do
    { :get => new_thought_path }.
      should route_to :controller => 'thoughts', :action => 'new'
  end

  it 'has a has a create_path' do
    { :post => create_thought_path }.
      should route_to :controller => 'thoughts', :action => 'create'
  end
end
