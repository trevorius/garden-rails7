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
    pp Bed.all
  end

  it "renders a list of 2 beds" do
    render
    assert_select "div>p>strong", text: "Name:".to_s, count: 2
    assert_select "div>p>strong", text: "Bed type:".to_s, count: 2
  end
end
