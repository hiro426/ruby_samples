# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Memento
# @brief  状態を記録・復元する
#         C++だとfriendなどあるがrubyだとないのでアクセサを使用
#=============================================================

class Memento

  attr_accessor :save
  def initialize(value)
    @save = value
  end

end

class GameManager

  def initialize
    @cnt = 0
  end

  def count
    @cnt += 1
    puts @cnt
  end

  def save
    Memento.new(@cnt)
  end

  def load(mem)
    @cnt = mem.save
  end

end

#--main--#
gm = GameManager.new

gm.count
gm.count

mem = gm.save

gm = GameManager.new
gm.load( mem )
gm.count
