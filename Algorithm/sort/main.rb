# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  EntryPoint
# @brief  プログラム開始地点
#=============================================================
require 'Sort'
include Lib

array = [5, 6, 4, 3, 1, 2, 7, 9, 8]
Sort::shakerSort(array, Sort::ORDER_ASCEND)
p array
Sort::shakerSort(array, Sort::ORDER_DESCEND)
p array
