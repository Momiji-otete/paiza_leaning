# 商品の検索
# N 個の文字列 S_1, ... , S_N と、Q 個の文字列 T_1, ... , T_Q が与えられます。
# 各 T_i について、以下の処理を行ってください。

# S_j == T_i を満たす最小の j を出力する。
# ただし、そのような j が存在しない場合は -1 を出力する。

# 入力例1
# 3 2
# a
# b
# c
# b
# d
# 出力例1
# 2
# -1
# 入力例2
# 6 2
# pai
# za
# p
# pa
# pai
# za
# za
# pai
# 出力例2
# 2
# 1

input = gets.split(' ').map(&:to_i)
a = []
b = []

input[0].times do
    a.push(gets.chomp)
end

input[1].times do
    b.push(gets.chomp)
end

result = []
b.each do |b_str|
    if a.include?(b_str)
        result << a.index(b_str) + 1
    else
        result << -1
    end
end

puts result