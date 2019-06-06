# Observer
## Aに変更があった時にBに通知する仕組み。

# ダメ

class Employee
  attr_reader :name, :salary
  attr_accessor :title

  def initialize(name, title, salary, payroll)
    @name = name
    @title = title
    @salary = salary
    @payroll = payroll
  end

  def salary=(new_salary)
    @salary = new_salary
    @payroll.update(self) #通知する
  end
end

class Payroll
  def update(changed_employee)
    puts "#{changed_employee.name}のために小切手を切ります"
    puts "#{changed_employee.salary}円になりました"
  end
end
