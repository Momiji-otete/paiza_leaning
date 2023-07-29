# あなたは、さまざまな花のリースを販売している業者です。

# あなたは、お客さんのわかりやすさのため、種類の同じリースは同じ箱に分けて並べることにしました。
# リースは複数の種類の花からなり、花が手前を向くように並べた場合が表です。
# 2 つのリースが同じ種類のリースであるとは、共に表にした状態で、回転させることで同じ並びにすることができることを言います。
# 同じ花の数からなる 2 つのリースが与えられるので、これらが同じ種類であるか判定するプログラムを作成してください。

# 入力例1
# 5
# baaab
# aabba
# 出力例1
# Yes

# 入力例2
# 5
# baaab
# abaab
# 出力例2
# No

wreath_size = gets.chomp.to_i
first_wreath = gets.chomp
second_wreath = gets.chomp.chars
ans = []
(wreath_size - 1).times do
    if second_wreath.rotate!.join == first_wreath
        ans << "Yes"
    end
end

puts (ans.empty?) ? "No" : ans