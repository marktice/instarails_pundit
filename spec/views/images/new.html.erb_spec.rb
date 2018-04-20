require 'rails_helper'

RSpec.describe "images/new", type: :view do
  before(:each) do
    assign(:image, Image.new(
      :user => nil,
      :image_data => "MyText",
      :description => "MyText"
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input[name=?]", "image[user_id]"

      assert_select "textarea[name=?]", "image[image_data]"

      assert_select "textarea[name=?]", "image[description]"
    end
  end
end
