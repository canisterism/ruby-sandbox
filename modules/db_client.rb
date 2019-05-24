require "./gems/client.rb"

module SqlClient

  def client
    @client ||= make_client
    @client
  end

  private

  def make_client
    puts "create new client"
    client = Mysql2::Client.new("localhost")
    client
  end

end
