# 縦 H マス、横 W マスの H × W マスからなる迷路 S があります。
# 上から i 行目、左から j 列目のマス は S_ij とあらわされ、 S_ij が「#」のとき壁であり、
# 「.」のとき道です。整数 r、c が与えられるので、S_rc が壁かどうか判定してください。

# 入力例1
# 3 4 1 2
# ..#.
# #.##
# ....

# 出力例1
# No

*, w, c = gets.split(' ').map(&:to_i)
labyrinth = readlines(chomp: true).map { |line| line.split('') }

if labyrinth[w - 1][c - 1] == '#'
    puts "Yes"
else
    puts "No"
end