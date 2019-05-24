# provided MySQL Client Gem
  class Client

    attr_accessor :con

    def initialize(con)
      @con = con
    end

    def do_some_dml
      puts "record saved in #{@con}"
      true
    end
  end
