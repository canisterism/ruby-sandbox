require "./modules/db_client.rb"
class ModelA
  include DbClient

  def like_save
    if client.do_some_dml
      "ok"
    else
      "ng"
    end
  end

  def hoge
    puts "This is instance method calling hoge (class method)"
    puts "self.class: #{self.class}"
    self.class.class_method
  end

  def self.class_method
    "hoge"
  end

end
