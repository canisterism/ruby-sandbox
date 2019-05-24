require "./modules/db_client.rb"
class ModelB
  include DbClient

  def like_save
    if client.do_some_dml
      "ok"
    else
      "ng"
    end
  end
end
