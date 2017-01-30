# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Prototype
# @brief  事前にクラスのインスタンス(オブジェクト)を用意しておき、
#         そのコピー(クローン)を作りだすことで、
#         以降の インスタンス生成を簡単にする
#=============================================================
require 'ComplexShape'

com = ComplexShape.new
com.x = 10
com.y = 20
com.z = 30

com.draw

com2 = com.clone

com.draw
com2.draw

com.x += 10
com.draw
com2.draw