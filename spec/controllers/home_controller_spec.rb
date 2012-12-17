require "spec_helper"

describe HomeController do
  it "retrieves correctly to the homepage" do
    get :index
    expect(response).to be_success
  end
  it "retrieves correctly to the beta homepage" do
    get :index2
    expect(response).to be_success
  end

end
