# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  EntryPoint
# @brief  プログラム開始地点
#=============================================================
require 'csv'

require 'Graph'
include Lib

i = 0
array = []
CSV.open("Graph.csv", "r"){ |row|
  row.shift
  array[i] = row
  i += 1
}

p array
p array[1][0]

p Lib::Graph::dijkstra(array, 0, 10)