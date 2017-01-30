# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Iterator
# @brief  rubyでは内臓されているので、
#         ブロックつきメソッドをつくる
#         BookListクラスから順々にBookクラスを取り出す(BookList#each)
#=============================================================
require 'BookList'

# 本のリストを作成
booklist = BookList.new
# 本を用意
book1 = Book.new("タイトル", "作者")
book2 = Book.new("neo", "neo")
# 本のリストに格納
booklist.add(book1)
booklist.add(book2)
# 本のリスト一覧を表示
booklist.each do |book|
  puts book.title
end
