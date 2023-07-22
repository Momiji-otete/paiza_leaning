# 動的配列
# N 個の要素からなる数列 A が与えられます。数列 A に対し、次の 3 つの操作を行うプログラムを作成してください。
# ・ push_back x : A の末尾に x を追加する
# ・ pop_back : A の末尾を削除する
# ・ print : A を半角スペース区切りで1行に出力する

# 最初の数値が 0 x は push_back x を、 1 は pop_back を、 2 は print をそれぞれ表します。

# 入力例1
# 3 5
# 1 2 3
# 0 10
# 0 12
# 2
# 1
# 2

# 出力例1
# 1 2 3 10 12
# 1 2 3 10

input = gets.split(' ').map(&:to_i)
push_back = "0"
pop_back = "1"
print = "2"
array = gets.split(' ')
input[1].times do
  order = gets.split(' ')
  if order[0] == push_back
      array.push(order[1])
  elsif order[0] == pop_back
      array.pop
  elsif order[0] == print
      puts array.join(' ')
  end
end