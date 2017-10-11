# encoding: utf-8
class Tester
  def profile(p)
    @a = ["1", "田中", "19910301", "豊島区"]
    @b = ["2", "中島", "19921029", "目黒区"]
    @c = ["3", "斎藤", "19921204", "江東区"]
    if @a[0] == p
      return @a
    elsif @b[0] == p
      return @b
    elsif @c[0] == p
      return @c
    else
      print("そのユーザーは存在しません。")
    end
  end
end
