# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

require 'Book'

class BookList

  #=============================================================
  # @brif 初期化
  #=============================================================
  def initialize()
    @booklist = Array.new
  end

  #=============================================================
  # @brif   新しい本を加える
  # @param  book: 追加する本
  #=============================================================
  def add(book)
    @booklist.push(book)
  end

  #=============================================================
  # @brif   本の数を返す
  #=============================================================
  def length()
    @booklist.length
  end

  #=============================================================
  # @brif   本の上書き
  # @param  n:    添字
  #         book: 新しい本
  #=============================================================
  def []=(n, book)
    @booklist[n] = book
  end

  #=============================================================
  # @brif   n番の本を返す
  # @param  n:    添字
  #=============================================================
  def [](n)
    @booklist[n]
  end

  #=============================================================
  # @brif   本をリストから削除
  # @param  n:    添字
  #=============================================================
  def delete(book)
    @booklist.delete(book)
  end

  #=============================================================
  # @brif   本の要素を順に取り出す
  #=============================================================
  def each
    @booklist.each do |book|
      yield book
     end
  end

end