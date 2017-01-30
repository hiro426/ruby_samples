# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# スーパークラス(抽象クラス、インタフェース)
class AbstractDisplay

  # 表示
  def dump
  end

  # テンプレートメソッド
  def print

    puts "start print"
    dump
    puts "end print"

  end

end

# サブクラス
class Display < AbstractDisplay

  # オーバーライド
  def dump
    puts "オーバーライドしました。"
  end

end
