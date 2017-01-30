# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Facade
# @brief  Facadeパターン（ファサードと読みます）は、
#         様々なクラス間で複雑なやり取りを行い、
#         １つの処理が完成するような場合に、その複雑さを覆い隠す目的で利用される
#         裏でどんな複雑なことが行われているか知らなくても、
#         それらのクラスの利用者は、ただ１つの窓口だけを利用すればいいという考え方
#=============================================================

class Application

  def run
    #内部で複雑な処理を行う
    puts "call:run"
  end

end

app = Application.new
app.run
