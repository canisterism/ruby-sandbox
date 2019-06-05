# Strategry Pattern
## ストラテジは同じインターフェースを持ち、同じ仕事をこなす
### クラスの外部からはストラテジオブジェクトは同じに見えて、、利用者(context)からはこれが取り替え可能なパーツとになる

class Report

  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = '月次報告'
    @text = ['晴天なう','ぽんぽんぺいん']
    @formatter = formatter
  end

  def output_report
    @formatter.output_report(self)
  end
end

class Formatter
  def output_report(context)
    raise 'Called abstract method: output_title'
  end
end

class HTMLFormatter < Formatter
  def output_report(context)
    puts "<title>#{context.title}</title>"
    puts '<body>'
    context.text.each do |line|
      puts "<p>#{line}</p>"
    end
    puts '</body>'
  end
end

class PlainTextFormatter < Formatter
  def output_report(context)
    puts("***#{context.title}***")
    context.text.each do |line|
      puts("***#{line}***")
    end
  end
end
