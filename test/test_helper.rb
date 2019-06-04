ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all

  # ---------------------------------------------
  # add from here
  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers

  def log_in( user )
    if integration_test?
      #use warden helper
      login_as(user, :scope => :user)
    else #controller_test, model_test
      #use devise helper
      sign_in(user)
    end
  end
  # add until here
  # ---------------------------------------------
end
