require 'rails_helper'

RSpec.describe "beds/new", type: :view do
  before(:each) do
    assign(:bed, Bed.new(
      name: "MyString",
      bed_type: "MyString"
    ))
  end

  it "renders new bed form" do
    render

    assert_select "form[action=?][method=?]", beds_path, "post" do

      assert_select "input[name=?]", "bed[name]"

      assert_select "input[name=?]", "bed[bed_type]"
    end
  end
end
