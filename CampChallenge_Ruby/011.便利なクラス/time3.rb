# encoding: utf-8
time = Time.new
a = time.strftime("%Y年%m月%d日%H時%M分%S秒")
if time.sec < 31
  print("現在の時刻は" + a + "であることをお知らせ致します。")
else
  print("\n")
end
