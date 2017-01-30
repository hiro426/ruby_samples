# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Bridge
# @brief  ２種類の継承により複雑化するクラスの橋渡し役となるクラス
#         一つ目は機能の階層構造を作ること
#         二つ目はインタフェースを実装すること
#         上記のクラスを組み合わせ易くするクラス
#=============================================================
require 'window'

wnd = Window.new(DrawLib.new)
wnd.draw

wnd2 = Window.new(DrawLib2.new)
wnd2.draw
