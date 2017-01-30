# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

require 'Cloneable'

# 例:複雑な図形を表すクラス
class ComplexShape < Cloneable

  # 複雑な図形を描くための変数(値)があると仮定
  attr_accessor :x, :y, :z

  # クローン生成
  def clone

    # メンバ変数のコピーなどを行う
    newobj = ComplexShape.new
    # これだと参照になる
    # newobj = self

    newobj.x = @x
    newobj.y = @y
    newobj.z = @z

    newobj

  end

  # 描画
  def draw

    print "x=", x, " y=", y, " z=", z, "\n"

  end

end