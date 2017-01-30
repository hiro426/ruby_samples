# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

class Product
  def print
    puts self.class.name
  end
end

class ProductA1 < Product
end

class ProductA2 < Product
end

class ProductB1 < Product
end

class ProductB2 < Product
end