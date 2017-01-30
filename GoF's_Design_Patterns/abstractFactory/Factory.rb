# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

require 'Product'

# super Factory
class Factory

  # 部品Ａ
  def createProductA()
  end

  # 部品Ｂ
  def createProductB()
  end

end

# sub Factory
class FactoryA < Factory

  def createProductA()
    ProductA1.new
  end

  def createProductB()
    ProductB1.new
  end

end

class FactoryB < Factory

  def createProductA()
    ProductA1.new
  end

  def createProductB()
    ProductB2.new
  end

end