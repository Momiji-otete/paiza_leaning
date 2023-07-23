# -1,000 ≦ A ≦ B ≦ 1,000 を満たす 2 つの整数 A, B が与えられます。A 
# 以上 B 以下である 2 つの整数 X, Y を適当に選んだとき、X * Y の取り得る値の最小値を出力してください。
# なお、X と Y は同じ値でもよいものとします。
# たとえば A が 3, B が 5 の場合について考えます。
# これは X と Y を両方とも 3 にしたときが最小で、 X * Y が 9 となります。

# 入力例1
# 3 5

# 出力例1
# 9

A, B = gets.split(' ').map(&:to_i)
def calc_min(num1, num2)
    if num1 > 0
        num1 * num1
    elsif num1 < 0 && num2 < 0
        num2 * num2
    else
        num1 * num2
    end
end
puts calc_min(A, B)