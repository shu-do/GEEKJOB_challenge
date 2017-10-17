class SessionGetController
  def call(env)
    request = Rack::Request.new(env)

    @name = request.session["name"]
    @sex = request.session["sex"]
    @free = request.session["free"]

    Rack::Response.new(render("session_get.html.erb"))
  end

  def render(template)
    path = File.expand_path("../../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
