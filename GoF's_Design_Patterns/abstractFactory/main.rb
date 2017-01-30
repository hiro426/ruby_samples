# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  AbstractFactory
# @brief  抽象的な工場
#         インスタンス生成を専門に行うクラスを用意する
#         実装に依存する部分を意識せずに、複数の部品群を生成するためのパターン
#=============================================================
require 'Factory'

factoryA = FactoryA.new
factoryB = FactoryB.new

fA_partsA = factoryA.createProductA
fA_partsB = factoryA.createProductB

fB_partsA = factoryB.createProductA
fB_partsB = factoryB.createProductB

fA_partsA.print
fA_partsB.print
fB_partsA.print
fB_partsB.print