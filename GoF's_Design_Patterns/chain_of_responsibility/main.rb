# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Chain Of Responsibility
# @brief  ある問題を処理できる可能性がある 複数のインスタンスを登録し、
#         順番に処理を試みていく
#=============================================================
require 'EventHandler'

ev = EventSender.new( [EventHandler1.new, EventHandler2.new] )
ev.func(EVENT_1)
ev.func(EVENT_2)