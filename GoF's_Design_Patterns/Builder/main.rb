# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Builder
# @brief  Builderパターンは、生成過程が異なるオブジェクトを、
#         共通の生成手順を使って生成できるようにする
#         オブジェクトを生成する部分が、Builderクラスとなり、
#         そこに共通の生成関数を持つ構造になる
#         生成は実際のところ 「初期化」に近い形(Directorクラスで行う)
#         Builderで生成⇒Directorで初期化する
#=============================================================
require 'TextBuilder'

t = TextBuilder.new
director = Director.new(t)
director.create

t.prints