require 'spec_helper'

describe "follows/new" do
  before(:each) do
    assign(:follow, stub_model(Follow,
      :follower_id => 1,
      :followed_id => 1
    ).as_new_record)
  end

  it "renders new follow form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", follows_path, "post" do
      assert_select "input#follow_follower_id[name=?]", "follow[follower_id]"
      assert_select "input#follow_followed_id[name=?]", "follow[followed_id]"
    end
  end
end
