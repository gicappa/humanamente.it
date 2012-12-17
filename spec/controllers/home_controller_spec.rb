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
  describe "beta email registering" do
    before { post :create, beta_user: {email: 'user@beta.it'} }
  end
  it "sends the beta user's email to the staff" do
    WelcomeMailer.mock(:register_beta_user)

  end
end
