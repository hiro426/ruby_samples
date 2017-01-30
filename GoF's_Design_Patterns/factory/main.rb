# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Factory
# @brief  newではなく生成するためのクラス(+メソッド)を使用し、
#         クラスの生成を行う
#=============================================================
require 'Product'

# Factory生成
factory = ProductFactory.new
# Factoryを使用してProduct生成
product = factory.create
# Product#Hello Method
product.hello