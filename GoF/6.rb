# Composite
## 部分から全体を組み立てる


# Component
## 共通のインターフェイスを持つ基底クラス
class Task
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # 所要時間を返す
  def get_time_required
    0.0
  end
end

# Leaf
## プロセスの単純な構成要素
## これもComponentと同じインターフェースを持つ

class AddDryIngredientsTask < Task
  def initialize
    super('Add dry Ingredients')
  end

  def get_time_required
    1.0
  end

end

class AddLiquidsTask < Task
  def initialize
    super('Add liquid Ingredients')
  end

  def get_time_required
    1.5
  end

end

class MixTask < Task
  def initialize
    super('Mix that batter up')
  end

    def get_time_required
    3.0
  end

end

# Composite
## Leafから作られる上位オブジェクト(Compoentではある)

class CompositeTask < Task
  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
  end

  def remove_sub_task(task)
    @sub_tasks.delete(task)
  end

  def get_time_required
    time = 0.0
    @sub_tasks.each { |task| time += task.get_time_required }
    time
  end

end

# Compositeの実クラス
class MakeBatterTask < CompositeTask
  def initialize
    super('Make batter')
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end
end
