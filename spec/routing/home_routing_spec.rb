require 'spec_helper'
describe "routing to profiles" do
  it "should route to the homepage" do
    expect(:get => "/").to be_routable
  end
end