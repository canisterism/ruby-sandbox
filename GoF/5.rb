# Observer
## Aに変更があった時にBに通知する仕組み。

module Subject
  def initialize
    @observers = []
  end

  def add_observer(&observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.call(self)
    end
  end

  # e.add_observer do |changed_employee|
  #   puts "cut a new check for #{changed_employee.name}"
  #   puts "His salary is now #{changed_employee.salary}"
  # end

end

class Employee
  include Subject
  attr_reader :name, :salary

  def initialize(name, salary)
    super()
    @name = name
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end
end
