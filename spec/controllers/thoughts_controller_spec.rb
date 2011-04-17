require 'spec_helper'

describe ThoughtsController do
  describe '#index' do
    before do
      get :index
    end

    it 'should respond with a success(200)' do
      response.should be_success
    end
  end
end
