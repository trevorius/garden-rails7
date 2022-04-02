require 'rails_helper'

RSpec.describe "beds/index", type: :view do
  before(:each) do
    assign(:beds, [
      Bed.create!(
        name: "Name",
        bed_type: "Bed Type"
      ),
      Bed.create!(
        name: "Name",
        bed_type: "Bed Type"
      )
    ])
  end

  it "renders a list of beds" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Bed Type".to_s, count: 2
  end
end
