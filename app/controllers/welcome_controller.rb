class WelcomeController < ApplicationController
  def index
  	restrict!
  end

  def test_method
  	render json: {error: "some msg"}
  end
end
