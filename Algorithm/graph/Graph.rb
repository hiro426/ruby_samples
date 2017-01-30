# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Graph
# @brief  グラフ理論のアルゴリズム
#=============================================================

# namespace
module Lib

module Graph

  module_function
  #=============================================================
  # @brief  ダイクストラ法
  # @param  array:  ソートしたいArrayクラス(配列の配列)
  #         src:    スタート地点(row)
  #         dist:   ゴール地点(row)
  # @return 最短経路+総時間
  #                                                       (未完)
  #=============================================================
  @@ref = 0
  @@loot = 0
  @@dist = 0
  @@lisk = 0
  def dijkstra(array, src, dist)

    @@ref = array
    @@loot = Array.new
    @@loot.push([src, 0])
    @@dist = dist

    ret = 0
    cnt = 0
    while !(ret = lo) && cnt < 20
      p cnt += 1
    end

    return ret

  end

  # Memo 現在地点、時間
  def lo

    p "lo"

    no = -1
    time = -1

    @@loot.each{ |item|

      now = item[0]
      t = item[1]
      for i in 0...@@ref[now].size

        tt = t + @@ref[now][i].to_i

        if 0 < @@ref[now][i].to_i && @@lisk < tt

          if (time == -1) || (tt < time)
            time = tt
            no = i

            if @@dist == no
              p "end"
              return time
            end

          # 重複排除

          end

        end

      end

    }

    @@loot.push([no, time])
    @@lisk = time
    p @@loot
    return false

  end










































end # Graph

end # Lib