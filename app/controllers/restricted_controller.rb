class RestrictedController < ActionController::Base
  def self.call(env)
    action(:respond).call(env)
  end

  def respond
    flash.alert = "Couldn't access the resource"
    redirect_to "/welcome/test_method"
  end
end