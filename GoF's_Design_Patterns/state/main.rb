# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  State
# @brief  現在の状態をクラスを使って保持する
#=============================================================
require 'Time'

# 朝
t = TimeMorning.new
t.Request

# 時間が経ったら昼に切り替える
t = TimeDay.new
t.Request

# 時間が経ったら夜に切り替える
t = TimeNight.new
t.Request