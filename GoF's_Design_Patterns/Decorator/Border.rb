# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

require 'Display'
# 飾り枠基底
class Border < Display

  def initialize(obj)
    @nextObj = obj
  end

end

# 飾り
class BorderEx < Border

  def initialize(obj)
    @nextObj = obj
  end

  def getText
    @nextObj.class.name + "borderEx da"
  end

end