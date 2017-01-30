# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

#=============================================================
# @title  Interpreter
# @brief  ある問題を解決するために都合の良い、
#         小さな言語（ミニ言語）を作ってしまうという方法
#=============================================================

def compute(a, op, b)

  if op == "+"
    a + b
  elsif  op == "-"
    a - b
  elsif  op == "*"
    a * b
  elsif  op == "/"
    a / b
  end

end

def add(a, b)
  a + b
end

a, b = 10, 20

p compute(a, "+", b)
p compute(a, "-", b)
