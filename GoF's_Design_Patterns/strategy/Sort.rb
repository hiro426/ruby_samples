# encoding: utf-8
$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加

# super
class SortStrategy
  def sort
  end
end

# bubbleSort
class BubbleSort < SortStrategy
  # ソートを実行する
  def sort
    puts "バブルソートによるソート"
  end
end

# QuickSort
class QuickSort < SortStrategy
  def sort
    puts "クイックソートによるソート"
  end
end