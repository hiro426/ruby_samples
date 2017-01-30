# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

require 'Draw'

# bridge
class Window_Bridge_Draw

  def initialize(graphics)
    @g = graphics
  end

  def draw
    @g.draw
  end

end

# window
class Window < Window_Bridge_Draw

  # 生成する際、graphicsに渡すクラスを変えてあげれば
  # 違うグラフィクスライブラリが使用出来る
  def initialize(graphics)
    super(graphics)
  end

end