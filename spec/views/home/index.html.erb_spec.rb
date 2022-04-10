require 'rails_helper'

RSpec.describe "home/index", type: :view do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'renders home index page' do
    render
    expect(rendered).to match /Plan du Jardin/
  end
  it 'assigns @title' do
    render
    assert_select('h1', text: 'Plan du Jardin')
  end
end
