# 考古学者兼ITエンジニアであるあなたはパイザ遺跡の発掘に成功し、
# そこに数式のようなものが刻まれていることに気づきました。
# <///////+<<</+////

# あなたはこの数式の記法をパイザ記法と命名し、解読を試みたところ、以下のルールを見つけ出しました。

# ・数式はすべて 2 個以上の整数の足し算となっている
# ・使用する整数は 1 から 99 までで、10 進法を用いる
# ・連続する "<" の数が整数の 10 の位を表し、それに続く連続する "/" (スラッシュ) の数が整数の 1 の位を表す
# ・"+" が足し算の記号を表す

# このルールをもとに、パイザ記法で書かれた数式を解釈し、その結果を返すプログラムを作成してください。
# なお、上記のルールで解釈不能な入力は与えられません。

# 入力例1
# ///+////
# 出力例1
# 7

# 入力例2
# <///////+<<</+////
# 出力例2
# 52

# 入力例3
# <<<<<<<<</////////+<<<<<<<<</////////
# 出力例3
# 198

formula = gets.chomp.split('+')
# result = 0
# formula.each do |paiza_num|
#     result += paiza_num.count('/') + paiza_num.count('<') * 10
# end
result = formula.sum do |paiza_num|
    paiza_num.count('/') + paiza_num.count('<') * 10
end
puts result