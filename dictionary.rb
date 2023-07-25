# p 人のグループ A , q 人のグループ B , r 人のグループ C があります。
# 各グループのメンバーにはそれぞれ番号がつけられており、
# A グループの i 番目の人は B グループの j 番目の人に仕事を任せ、 
# B グループの j 番目の人は与えられた仕事を C グループの k 番目の人に任せます。
# すると結局、 A グループの i 番目の人の仕事をするのは C グループの k 番目の人だということになります。

# パイザ君は A グループの各人の仕事を結局 C グループの誰が行うことになるのか知りたがっています。
# A グループの人のそれぞれが最終的に C グループの誰に仕事を頼むことになるのかを、
# A グループの人の番号が小さい順に p 行出力してください。

# 入力例1
# 2 2 2
# 2 1
# 1 2
# 1 1
# 2 2
# 出力例1
# 1 2
# 2 1

# 入力例2
# 2 3 4
# 1 3
# 2 1
# 2 3
# 3 3
# 1 4
# 出力例2
# 1 3
# 2 4

a,b,* = gets.split(' ').map(&:to_i)
a_b = []
b_c = []
a_c = []
a.times do
    a_b << gets.split(' ')
end
b.times do
    b_c << gets.split(' ')
end
a_b.each do |a_b|
    b_c.each do |b_c|
        if a_b[1] == b_c[0]
            a_c << [a_b[0], b_c[1]]
        end
    end
end
a_c.sort_by{|x| x[0].to_i }.each do |n|
    puts n.join(' ')
end