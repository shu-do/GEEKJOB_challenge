# encoding: utf-8
time = Time.new
times = time
File.open("test.rtf", "w") do |io|
  io.puts("開始")
  io.puts(times)
end

str = "Hello, Ruby."
p str.slice!(-1)
p str.slice!(5..6)
p str.slice(0,5)
p str

File.open("test.rtf", "a") do |io|
  io.puts("終了")
  io.puts(times)
end
text = File.read("test.rtf")
print(text)
