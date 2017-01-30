# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# super
class Display

  @nextObj = nil
  attr_accessor :nextObj

  def getText
    "dammy"
  end

  def print

    puts getText()
    if nextObj != nil
      nextObj.print
    end

  end

end

# sub
class StdDisplay < Display

  def initialize(obj)
    @nextObj = obj
  end

  def getText
    obj.class.name + "StdDisplay yo"
  end

end