require 'mysql2'
class UserT
  def initialize(params)
    @params = params
    @client = Mysql2::Client.new(:host => 'localhost', :username => 'root', :password => 'root', :database => 'test_db')
    print("DB connected!")
  end

  def check_params?
    if @params["name"].empty? || @params["year"].empty? || @params["month"].empty? || @params["day"].empty? || @params["tell"].empty?
      false
    else
      true
    end
  end

  def view_helper
    view_params = {}
    view_params["name"] = @params["name"]
    view_params["tell"] = @params["tell"]
    view_params["comment"] = @params["comment"]
    view_params["birthday"] = @params["year"] + "年" + @params["month"] + "月" + @params["day"] + "日"
    case @params["type"]
    when "1"
      view_params["type"] = "エンジニア"
    when "2"
      view_params["type"] = "営業"
    when "3"
      view_params["type"] = "その他"
    end
    view_params
  end

  def insert
    statement = @client.prepare(%q{insert into user_t(name,birthday,tell,type,comment,newDate) VALUES(?,?,?,?,?,?)})
    @result = statement.execute(@params["name"], Date.parse(@params["year"] + "-" + @params["month"] + "-" + @params["day"]), @params["tell"], @params["type"], @params["comment"], DateTime.now)
  end

  def search
    #SQLを動的に生成
    query = "select * from user_t"
    where_flag = false
    if !@params["name"].nil?
      query += " WHERE name like ?"
      where_flag = true;
    end
    if @params["tell"].nil?
      query += " WHERE tell like ?"
    end
    if @params["type"] != 0
      query += where_flag ? " AND type like ?" : " WHERE type like ?"
    end
    if @params["year"].nil?
      query += " WHERE year like ?"
    end
    if @params["month"].nil?
      query += " WHERE month like ?"
    end
    if @params["day"].nil?
      query += " WHERE day like ?"
    end

    statement = @client.prepare(query)

    @result = statement.execute(@params["name"],@params["type"])
  end

  def search_by_id
    query = "select * from user_t where userID = ?"
    statement = @client.prepare(query)
    @result = statement.execute(@params["userID"])

    # 主キーであるuserIDの一致検索のため、戻り値は範囲オブジェクトでなく最初の一件だけでよい
    @result.first
  end
end
