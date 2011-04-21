class ThoughtsController < ApplicationController
  def index
    @thoughts = ['Take out trash', 'Am I in love?', 'Who farted?']
    render :text => params.inspect
  end
end
