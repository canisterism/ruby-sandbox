# Strategry Pattern
## ストラテジは同じインターフェースを持ち、同じ仕事をこなす
### クラスの外部からはストラテジオブジェクトは同じに見えて、、利用者(context)からはこれが取り替え可能なパーツとになる

class Report

  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter)
    @title = '月次報告'
    @text = ['晴天なう','ぽんぽんぺいん']
    @formatter = formatter
  end

  def output_report
    @formatter.call(self)
  end
end

HTML_FORMATTER = lambda do |context|
  puts "<title>#{context.title}</title>"
  puts '<body>'
  context.text.each do |line|
    puts "<p>#{line}</p>"
  end
  puts '</body>'
end

PLAIN_TEXT_FORMATTER = lambda do |context|
  puts("***#{context.title}***")
  context.text.each do |line|
    puts("***#{line}***")
  end
end
