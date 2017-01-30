# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Command
# @brief  命令そのものをクラスとして表現する
#         命令を表すクラスをインスタンス化する
#         ex.マウスクリック⇒クリックコマンドクラス生成⇒サブルーチン呼ぶ
#=============================================================

class Command

  def exec
  end

end

class ClickCommand < Command

  def exec

    puts "マウスクリックされました～"

  end

end

# クリックされた？
click = true
if click

  c = ClickCommand.new
  c.exec

end