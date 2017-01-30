# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

class Obj

  @med = nil
  def initialize(med)
    @med = med
  end

  # 仲介者へ変更を伝える
  def change
    med.change(self)
  end


end