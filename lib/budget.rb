class Budget
  attr_reader :year, :departments, :employees

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_departments(department)
    @departments << department
  end

  def list_employees_by_salary
    @employees.map { |employee| employee.salary }
  end
end
