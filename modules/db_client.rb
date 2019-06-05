require "./gems/client.rb"

module DbClient

  def client
    @client ||= make_client
  end

  def module_class_method
    puts "this is module_class_method"
  end

  module_function :module_class_method

  private

  def make_client
    puts "create new client"
    client = Client.new("localhost")
  end

end
