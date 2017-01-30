# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

class Mediator

  @obj = nil
  def initialize
    @obj = Array.new
  end

  def set(obj)
    @obj.push(obj)
  end

  def change(obj)

  # 状況に応じて他Objectへ伝達する

    @obj.each{ |o|

    }

  end


end