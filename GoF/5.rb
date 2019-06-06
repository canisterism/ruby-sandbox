# Observer
## Aに変更があった時にBに通知する仕組み。

# ダメ

class Employee
  attr_reader :name, :salary
  attr_accessor :title

  def initialize(name, title, salary, observers=[])
    @name = name
    @title = title
    @salary = salary
    @observers = observers
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

end

class Payroll
  def update(changed_employee)
    puts "#{changed_employee.name}のために小切手を切ります"
    puts "#{changed_employee.salary}円になりました"
  end
end
