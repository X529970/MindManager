require 'spec_helper'

describe 'thoughts/new.html.erb' do
  before do
    render
  end

  describe 'new Thought form' do
    subject { css_select('form#thought').first }

    it { should_not be_nil }

    it 'has a name input' do
      css_select(subject, 'input[name=name]').should_not be_empty
    end

    it 'has a submit button' do
      css_select(subject, 'input[type=submit]').should_not be_empty
    end
  end
end
