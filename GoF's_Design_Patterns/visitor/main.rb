# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Visitor
#=============================================================
=begin

@brief
Visitorパターンは、データ構造と、そこで行う処理を分離します。
パターンの名前になっている「Visitor」は「訪問者」という意味で、「Visit」なら「訪問する」という意味になります。
どこを訪問するかといえば、「データ構造」にです。相手のデータ構造がどのような形であれ（リストであるとか、木構造であるとか）、
「その中の要素を訪問する」という考え方をすれば共通化できそうです。この考え方は、データ構造の変化に強く、その実装にも依存しません。
訪問するのは良いとして、その後どうなるのでしょう。訪問先の内部に入り込んだまま
その場で処理を行おうとすれば （言い換えると、訪問先クラスのメンバ関数の中で、処理を記述しようとすれば）、
パターンの目的である、データ構造と処理の分離になりません。
そこで、訪問先から、今度は訪問者の側を呼び出します。この部分が理解し難いところですが、
要するに、 「訪問者」→「訪問先の関数」→「訪問者の関数」という順序の呼び出しになります。
このような互いを呼び出し合うような形を取ることにより、「相手が誰で」「訪問者が誰か」という２つの組み合わせを決定し、
実際に行う処理が確定するような形を、ダブルディスパッチと呼びます。
この形を取ることで、実際に行う処理は訪問者の側で実行されますから、データ構造と処理はうまく分離されます。

=end

class Filenode

  def initialize(name, size)

    @name = name
    @size = size

  end

  def visit
    puts "File : " + @name + " size " + @size.to_s + "byte"
  end

end

class Directorynode
  @@currentdir = ""
  def initialize(name)
    @name = name
    @list = Array.new
  end

  def add(entry)
    @list.push(entry)
  end

  attr_reader :name

  def visit
    puts "@@currentdir" + "/" + @name + " "
    savedir = @@currentdir
    @@currentdir = @@currentdir + "/" + @name
    @list.each {|item| item.visit}
    @@currentdir = savedir
  end

end

#--main--#
f1 = Filenode.new("F1", 128)
d1 = Directorynode.new("D1")
f2 = Filenode.new("F2", 256)
d2 = Directorynode.new("D2")
f3 = Filenode.new("F3", 64)
d3 = Directorynode.new("D3")
f4 = Filenode.new("F4",1024)
f5 = Filenode.new("F5", 256)

d1.add(f1)
d1.add(d2)
d1.add(f2)
d2.add(f3)
d2.add(f4)
d2.add(d3)
d3.add(f5)

d1.visit
