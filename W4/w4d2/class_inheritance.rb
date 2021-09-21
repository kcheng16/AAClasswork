class Employee

  def initialize(boss)
    @employee_names =               #{ employee name => title }
    @title_salary_hash = Hash.new(0) #{title => salary }
    @boss = boss
  end

  def add_employee(name)
    @employee_names << name
  end

  def add_title_salary(title, salary)
    @title_salary_hash[title] = salary
  end

  def bonus(multiplier)

  end
end

class Manager < Employee

  def initialize
    
  end

end
