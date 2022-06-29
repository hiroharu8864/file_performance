#File.unlink(*filename) -> Integer
#特異メソッド
#ファイルを削除し、削除したファイルの数を返す。

time = Time.now
filename = "test.txt"

## for MacOS
`mkfile 100m #{filename}`
## for Linux
# `fallocate -l 100m #{filename}`

create_pass_times = Time.now - time
puts "create time is #{create_pass_times} sec passed"

time = Time.now
File.unlink(filename)

unlink_pass_times = Time.now - time
puts "delete time is #{unlink_pass_times} sec passed."
