# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# スーパークラス
class Super_Print
  def print
  end
end

# サブクラス
class Print < Super_Print

  # 表示
  def print
    puts "Print#print"
  end

end

# プロキシクラス
class Proxy_Print < Super_Print

  def initialize
    @src = nil
  end

  def realize
    @src = Print.new
  end

  def print
    realize
    @src.print
  end

end