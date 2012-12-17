require "spec_helper"

describe WelcomeMailer do
  specify { WelcomeMailer.should respond_to :register_beta_user }
end
