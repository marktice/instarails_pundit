require 'rails_helper'

RSpec.describe "images/edit", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :user => nil,
      :image_data => "MyText",
      :description => "MyText"
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input[name=?]", "image[user_id]"

      assert_select "textarea[name=?]", "image[image_data]"

      assert_select "textarea[name=?]", "image[description]"
    end
  end
end
