# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# super
class Draw

  def draw
  end

end

# sub
class DrawLib < Draw

  def draw
    print self.class.name, "Hello!\n"
  end

end

class DrawLib2 < Draw

  def draw
    print "ExLib", self.class.name, "Hello\n"
  end

end