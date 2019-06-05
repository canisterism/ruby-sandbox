class Report
  def initialize
    @title = '月次報告'
    @text = ['a','b']
  end

  def output_report
    puts "<title>#{@title}</title>"
    puts "<body>"
    @text.each do |line|
      puts "<p>#{line}</p>"
    end
    puts "</body>"
  end
end
