# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Proxy
# @brief  あるクラスの代理をするクラス
#         Proxyクラスは誰の代理なのかを知る必要がある
#=============================================================
require 'Print'

proxy_print = Proxy_Print.new
proxy_print.print