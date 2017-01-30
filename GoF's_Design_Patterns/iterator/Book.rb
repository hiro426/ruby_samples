# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

class Book

  # accessor method
  attr_accessor :title, :author, :genre

  # init
  def initialize(title, author, genre = nil)

    # substitution
    @title  = title
    @author = author
    @genre  = genre

  end

 end