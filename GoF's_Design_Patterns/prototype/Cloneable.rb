# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# クローンを作れることを表すインターフェース
class Cloneable

  def clone
  end

end