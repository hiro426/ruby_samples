# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  mediator
#=============================================================
=begin

@brief
Mediator は「仲介者」という意味で、複数のオブジェクト間を仲介する役割を持つクラスを１つ用意し、
ここを経由させることで、構造をすっきりさせる目的があります。
通常、処理を細かく分離し、部品化することには大きな意味がありますが、この考え方を適用し過ぎると、
相互のやり取りの経路が複雑化してしまいます。そうなると結局、全体を把握しづらくなってしまいます。
Mediatorパターンは、仲介者クラスが相互作用の仲立ちを行うようにします。
例えば、６つのオブジェクトが相互にやり取りを行うとしましょう。あるオブジェクトは、
他の５つのオブジェクトのメンバを呼び出すとすれば、６×５＝３０パターンの経路が存在することになります。
ここに仲介者クラスを挟みこむと、６つのオブジェクトはそれぞれ、仲介者クラスとだけやり取りすれば良いので、
全部で６パターンの経路で済みます。とはいえ、容易に想像が付くように、仲介者クラスは、この６つのオブジェクトの全てを知っている必要があります。
そうでなければ、互いの仲立ちが出来ません。そのため、仲介者クラスには、仲立ちが必要な６つのオブジェクトのインスタンスを、全て登録してやる必要はあります。
普通、仲介者クラスは、全てのオブジェクト間の相互関係を把握している必要があるため、
未知なるオブジェクトへの対応は難しくなります。そのため、仲介者クラスを使いまわすことは難しく、
Mediatorパターンを利用する箇所では、個別の仲介者クラスを用意しなければならないでしょう。

=end

require 'mediator'
require 'obj'

med = Mediator.new

obj1 = Obj.new(med)
obj2 = Obj.new(med)

med.set(obj1)
med.set(obj2)

p 'end'