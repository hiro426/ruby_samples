# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  FlyWeight
# @brief  共有できるものは共有するという考え方により、
#         メモリの消費量を節約するパターン
#=============================================================

class Chars

  def initialize

    @array = ["A", "B", "S"]

  end

  def get(mes)

    ret = []
    j = 0

    length = mes.length

    mes.each { |i|
      @array.each { |c|
        if i == c
          ret[j] = c
          j += 1;
        end
      }

    }

    ret

  end

end

ch = Chars.new
mes = ch.get("A")
puts mes