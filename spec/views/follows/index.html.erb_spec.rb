require 'spec_helper'

describe "follows/index" do
  before(:each) do
    assign(:follows, [
      stub_model(Follow,
        :follower_id => 1,
        :followed_id => 2
      ),
      stub_model(Follow,
        :follower_id => 1,
        :followed_id => 2
      )
    ])
  end

  it "renders a list of follows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
