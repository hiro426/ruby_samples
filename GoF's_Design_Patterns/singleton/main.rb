# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Singleton
# @brief  あるクラスのインスタンスが、
#         プログラム全体でただ１つしか存在しないことを保証する
#         それと同時に、そのインスタンスへの唯一のアクセス経路を提供する
#=============================================================

class Single

  # newを使用させない
  private_class_method :new
  @@obj = nil

  # インスタンスの取得
  def Single.getInstance

    # インスタンスの生成
    if @@obj == nil
      @@obj = new
    end

    # 実体を返す
    @@obj

  end

  # メソッド
  def print
    puts self.class.name
  end

end

#--main--#
obj1 = Single.getInstance
obj2 = Single.getInstance

if obj1 == obj2
  puts "obj1 == obj2"
end
