# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# 定数
EVENT_1 = 1
EVENT_2 = 2

# 抽象クラス
class EventHandler

  def func(id)
  end

end

# 処理クラス
class EventHandler1 < EventHandler

  def func(id)

    if id == EVENT_1

      # 処理
      print self.class.name, "が処理を行いました\n"
      return true

    end
    return false;

  end

end

class EventHandler2 < EventHandler

  def func(id)

    if id == EVENT_2

      # 処理
      print self.class.name, "が処理を行いました\n"
      return true

    end
    return false;

  end

end

# イベント通知クラス
class EventSender

  def initialize(array)
    @handler = array
  end

  def func(id)

    @handler.each { |ev|
      if ev.func(id)
        break;
      end
    }

  end

end