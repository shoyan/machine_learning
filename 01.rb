#
# 最小二乗法を使って誤差を求めるサンプル
#
# 3 * x + 10が正解
# 適当な式、2 * x + 5 を定義して誤差を計算してみた
# 2 * x + 5の誤差は201596
# 3 * x + 5の誤差は2388
# 正解に近づいた方が誤差は小さくなっている
#

x = []
y = []
z = [] # sampleの結果をいれる

def f(x)
  3 * x + 10
end

# 適当に予測した数式
def sample(x)
  2 * x + 5
end

100.times.each do |i|
    x << i
    # 適当にノイズを入れる
    y << f(i) + rand(5)
    z << sample(i)
end

# 誤差Eを計算する
sum = 0
y.each_with_index do |val, i|
  sum += (val - z[i]) * (val - z[i])
end
p sum / 2
