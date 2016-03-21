class MyMiddleware
  def initialize(app)
    @app = app #the next middleware to be called
    @fallback = RestrictedController
  end

  def call(env)
    result = catch(:restricted) do
      #binding.pry
      @app.call(env)
    end

    if result.nil?
      @fallback.call(env)
    else
      result
    end
  end
end
