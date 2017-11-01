require 'rack'

class SearchResultController
  def call(env)
    request = Rack::Request.new(env)

    params = request.params()
    @params = request.params()

    if @params["secret"] == request.session["secret"]
      # 入力パラメータをセッションに格納
     request.session["insert_params"] = @params

     user_t = UserT.new(params)
     @result_users = user_t.search

     Rack::Response.new(render("search_result.html.erb"))
   else
    @error = "不正なアクセスルートです"
    Rack::Response.new(render("error.html.erb"))
   end
  end

  def render(template)
    path = File.expand_path("../../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
