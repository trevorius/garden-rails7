require 'rails_helper'

RSpec.describe "beds/edit", type: :view do
  before(:each) do
    @bed = assign(:bed, Bed.create!(
      name: "MyString",
      bed_type: "MyString"
    ))
  end

  it "renders the edit bed form" do
    render

    assert_select "form[action=?][method=?]", bed_path(@bed), "post" do

      assert_select "input[name=?]", "bed[name]"

      assert_select "input[name=?]", "bed[bed_type]"
    end
  end
end
