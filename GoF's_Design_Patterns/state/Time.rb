# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# super
class TimeState
  def Request
    # 状態に応じて何かしらの処理を行う
  end
end

# sub
class TimeMorning < TimeState
  def Request
    puts "おはよう"
  end
end

class TimeDay < TimeState
  def Request
    puts "こんにちは"
  end
end

class TimeNight < TimeState
  def Request
    puts "こんばんは"
  end
end