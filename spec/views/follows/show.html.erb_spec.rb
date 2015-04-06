require 'spec_helper'

describe "follows/show" do
  before(:each) do
    @follow = assign(:follow, stub_model(Follow,
      :follower_id => 1,
      :followed_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
