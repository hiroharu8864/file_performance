#File.unlink(*filename) -> Integer
#特異メソッド
#ファイルを削除し、削除したファイルの数を返す。

time = Time.now

100.times do |v|
  File.open("#{v}.txt", "w") {|f| f.write "hello world #{v}" }
end

100.times do |v|
  File.unlink("#{v}.txt")
end

pass_times = Time.now - time
puts "#{pass_times} sec passed."
