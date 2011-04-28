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

  describe '#new' do
    before do
      get :new
    end

    it 'responds with a success(200)' do
      response.should be_success
    end
  end

  describe '#create' do
    before do
      post :create
    end

    it 'responds with a success(200)' do
      response.should be_success
    end
  end

  describe '#redirect' do
    before do
      get :redirect
    end

    it 'should not redirect_to index' do
      response.should_not redirect_to(:action => 'index')
    end

    context 'when doit=yes' do
      before do
        get :redirect, :doit => 'yes'
      end

      it 'should redirect_to index' do
        response.should redirect_to(:action => 'index')
      end
    end
  end
end
