# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

require 'Factory'

class Product

  # 表示
  def hello()
    puts "hello!"
  end

end

class ProductFactory < Factory

  # 生成
  def create()
    # 色々な処理+生成
    Product.new
  end

end