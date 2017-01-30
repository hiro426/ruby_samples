# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Observer
#=============================================================
=begin

@brief
Observerパターンは、状態の変化を、観察者（observer) に通知することにより、
状態の同期を取ることを目的とします。Observerパターンの動作は、Mediatorパターン（第２０章）に似ています。
Mediatorパターンでは、複数のオブジェクト間での相互のやり取りを仲介する仲介役を用意し、
状態が変化したとき、 一旦、仲介役に通知します。Observerパターンの場合は、
あらかじめ登録しておいた観察者（これは複数かも知れない）へ通知します。
このように同じような動作をしますが、目的が異なります。Mediatorパターンでは、各オブジェクトが直接的に
やり取りする相手を、仲介役１つだけにすることで、やり取りの経路を減らし、構造をすっきりさせます。
Observerパターンでは、状態の変化を、関係のある他のオブジェクトにも通知することによって、
状態に矛盾が生じないように、同期を取ることが目的です。これは例えば、Excel のようなアプリケーションで、
表形式のデータを編集すると、それを元にした棒グラフや折れ線グラフなどの表示も自動更新されるような場合に利用できます。
グラフ側は、常に元データを観察（observe) している訳です。
実装的には、「観察者」という響きとは異なり、観察対象の側から観察者へ通知を送ってやる必要があります。

=end

# データ表
class DataSheet

  @data = nil
  @obs = nil
  def initialize
    @data = 0
    @obs = Array.new
  end


  def addObserver(obs)

    @obs.push(obs)

  end

  def setData(data)

    @data = data

    # 観察者に通知
    @obs.each{ |o|
      o.update(self)
    }

  end

  def getData
    @data
  end

end

# 観察者
class Observer

  def update(dataSheet)
  end

end

# グラフ
class Graph < Observer

  def update(dataSheet)

    # グラフを生成し直す
    g = dataSheet.getData
    g **= 2

    # 出力
    puts g

  end

end

#--main--#
sheet = DataSheet.new
graph = Graph.new

sheet.addObserver(graph)
sheet.setData(5)
sheet.setData(10)

