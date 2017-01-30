# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# 元のクラス
class ClassA

  def print
    puts "このクラスはClassAです"
  end

end

=begin

# これじゃprintの表示がおかしい
class ClassB < ClassA
end

=end

# アダプター
class ClassA_adapter

  def print
    puts "このクラスはClassBです"
  end

end

# 継承先のクラス
class ClassB < ClassA_adapter
end