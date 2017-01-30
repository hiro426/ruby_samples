# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Sort
# @brief  Arrayクラスを使ったソート機能
#         ArrayクラスにMixinすれば機能拡張が出来る
#=============================================================

# namespace
module Lib

# Sort Module
module Sort

  # オーダー定数
  ORDER_ASCEND  = 0
  ORDER_DESCEND = 1

  # メソッドを外部へ公開
  module_function

  #=============================================================
  # @brief  判定式
  # @param  obj1: 比べたい配列の要素１
  #         obj2: 比べたい配列の要素２
  #         order:判定の仕方(定数を使用すること！)
  #=============================================================
  def judge(obj1, obj2, order)

    order == ORDER_ASCEND ? obj1 < obj2 : obj1 > obj2

  end

  #=============================================================
  # @brief  配列内の要素の入れ替え
  # @param  array: 対象となる配列
  #         index1:入れ替える要素の番号１(添字)
  #         index2:入れ替える要素の番号２(添字)
  #=============================================================
  def swap(array, index1, index2)

    array[index1], array[index2] = array[index2] , array[index1]

  end

  #=============================================================
  # @brief  バブルソート
  # @param  array: ソートしたいArrayクラス
  #         order: 並び順ID
  # @other  O(n^2), 安定ソート, 内部ソート
  #=============================================================
  def bubbleSort(array, order = ORDER_ASCEND)

    # ラストのindex
    last = array.size-1
    # 最後の要素の一つ手前までソートすれば良いので(0...max-1)
    for i in 0...last
      # 一番小さい(又は、大きい)要素をi番目の位置に移動させる
      last.downto(i+1){ |j|

        if judge(array[j], array[j-1], order)
          swap(array, j, j-1)
        end

      }

    end

  end

  #=============================================================
  # @brief  シェーカーソート
  # @param  array: ソートしたいArrayクラス
  #         order: 並び順ID
  # @other  O(n^2), 安定ソート, 内部ソート
  #=============================================================
  def shakerSort(array, order = ORDER_ASCEND)

    # ループ開始位置のindex
    top = 0
    bottom = array.size-1

    # バブルソートを双方向から行う
    flag = true
    while flag

      flag = false

      top.upto(bottom-1){ |i|
        if judge(array[i+1], array[i], order)
          swap(array, i, i+1)
          flag = true
        end
      }

      bottom.downto(top+1){ |i|
        if judge(array[i], array[i-1], order)
          swap(array, i, i-1)
          flag = true
        end
      }

      top += 1
      bottom -= 1

    end

  end

end # Sort

end # Lib