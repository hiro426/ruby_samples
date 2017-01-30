# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# super
class Entry

  def add(entry)
  end

  def getName
  end

end

# sub
class Directory < Entry

  def initialize

    @name = "フォルダ"
    @file = {}

  end

  def add(entry)

    @file.push(entry)

  end

  def getName
    @name
  end

end

class Files < Entry

  def initialize
    @name = "ファイル"
  end

  def getName
    @name
  end

end