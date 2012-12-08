require "spec_helper"

describe HomeController do
  it "retrieve correctly to the homepage" do
    get :index
    expect(response).to be_success
  end
end
