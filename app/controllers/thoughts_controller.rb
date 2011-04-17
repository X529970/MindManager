class ThoughtsController < ApplicationController
  def index
    render :text => params.inspect
  end
end
