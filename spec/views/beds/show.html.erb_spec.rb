require 'rails_helper'

RSpec.describe "beds/show", type: :view do
  before(:each) do
    @bed = assign(:bed, Bed.create!(
      name: "Name",
      bed_type: "Bed Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Bed Type/)
  end
end
