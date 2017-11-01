require 'rack'

class SearchController
  def call(env)
    request = Rack::Request.new(env)
    @secret = Digest::SHA256.hexdigest(rand.to_s)
    request.session["secret"] = @secret

    @insert_params = {}
    if request.session["insert_params"].nil?
      @insert_params = {"name" => "", "year" => 0, "type" => 1}
    else
      @insert_params = request.session["insert_params"]
    end

    Rack::Response.new(render("search.html.erb"))
  end

  def render(template)
    path = File.expand_path("../../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
