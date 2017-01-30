# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Strategy
# @brief  アルゴリズムなどの処理をごっそり切り替えるためのパターン
#         ソートなど状況によっていろいろなアルゴリズムに切り替えることができる
#=============================================================
require 'Sort'

class Sample

  def initialize(sortObj)
    @sortObj = sortObj
  end

  def sort
    @sortObj.sort
  end

end


sortObj = BubbleSort.new
# sortObj = QuickSort.new

s = Sample.new( sortObj )
s.sort
