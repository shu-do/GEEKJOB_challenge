# encoding: utf-8
File.open("profile.rtf", "w") do |io|
  io.puts("中島\n19910301\n")
end
text = File.read("profile.rtf")
print(text)
