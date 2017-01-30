# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Composite
# @brief  Compositeパターンは、ディレクトリとファイルの集まりのように、
#         構造の中に再帰が見られる場合に適当できるパターンです。
#         ディレクトリの中には、ファイルの他 に、更にディレクトリがあります。
#         これが構造が再帰しているという意味です。
#         Compositeパターンは、この再帰構造を木構造と考えたとき、
#         枝と葉を同じもののように扱える ようにします。
#         あるいは、「容器と中身を同一視する」という言葉で表現されることもあります。
#         この場合、ディレクトリが容器で、その中にあるファイルやディレクトリが中身ということになります。
#         rubyの場合、全てのクラスがObjectクラスとして扱える
#=============================================================
require 'Class'

entry = [Directory.new, Files.new]

entry.each {|obj|
  puts obj.getName
}