# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

require 'Builder'

class TextBuilder < Builder

  def prints
    print "title=", @title, "\n"
    print "name=", @name, "\n"
  end

end