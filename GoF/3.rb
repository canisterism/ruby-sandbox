# Template Method
## 変わらない部分だけ親クラスに定義する
### 変わる部分は子クラスに

class Report
  def initialize
    @title = '月次報告'
    @text = ['晴天なう','ぽんぽんぺいん']
  end

  def output_report
    output_title
    output_body_start
    output_body
    output_body_end
  end

  # abstract methods
  def output_title
    raise 'Called abstract method: output_title'
  end

  def output_body
    raise 'Called abstract method: output_body'
  end

  def output_body_start
  end
  def output_body_end
  end

end

class HTTPReport < Report

  def output_title
    puts "<title>#{@title}</title>"
  end

  def output_text
    @text.each do |line|
      puts "<p>#{line}</p>"
    end
  end

  def output_body_start
    puts "<body>"
  end


  def output_body_end
    puts "</body>"
  end
end

class PlainReport < Report
  def output_title
    puts "***#{@title}***"
  end

  def output_text
    @text.each do |line|
      puts "***#{@title}***"
    end
  end
end






end
