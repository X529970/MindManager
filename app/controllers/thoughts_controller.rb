class ThoughtsController < ApplicationController
  before_filter :generate_thoughts, :only => [:index]

  def index
  # render :text => params.inspect
  end

  def generate_thoughts
    @thoughts = ['Take out trash', 'Am I in love?', 'Who farted?']
  end
end
