class Report
  def initialize
    @title = '月次報告'
    @text = ['晴天なう','ぽんぽんぺいん']
  end

  def output_report(format = :plane)
    if format == :plane
      puts("***#{@title}***")
      @text.each do |line|
        puts("***#{line}***")
      end
    else
      puts "<title>#{@title}</title>"
      puts "<body>"
      @text.each do |line|
        puts "<p>#{line}</p>"
      end
      puts "</body>"
    end
  end
end
