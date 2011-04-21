require 'spec_helper'

describe ThoughtsController do
  describe '#index' do
    before do
      get :index
    end

    it 'should respond with a success(200)' do
      response.should be_success
    end

    it 'assigns @thoughts' do
      assigns(:thoughts).should_not be_nil
    end
  end
end
