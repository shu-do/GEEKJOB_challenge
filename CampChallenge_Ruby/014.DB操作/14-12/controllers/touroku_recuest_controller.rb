class TourokuRecuestController
  def call(env)



request = Rack::Request.new(env)
    @params = request.params()


    Rack::Response.new(render("touroku_recuest.html.erb"))
  end

  def render(template)
    path = File.expand_path("../../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
