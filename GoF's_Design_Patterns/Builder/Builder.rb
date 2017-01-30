# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# 生成クラスのインターフェース
class Builder

  @title = @name = nil

  # 初期化用メソッド
  def createTitle(title)
    @title = title
  end
  def createName(name)
    @name = name
  end
  def endCreate()
    return 0
  end
end

# 初期化を行うクラス
class Director

  @target = nil

  def initialize(target)
    @target = target
  end

  def create()
    # ハードコーディングしているが当然クラスメンバ関数などで
    # 適切な値を代入して良い
    @target.createTitle("Title")
    @target.createName("Name")
    @target.endCreate
  end

end