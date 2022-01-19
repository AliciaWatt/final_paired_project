class Division
  attr_reader :name, :departments

  def initialize(name)
    @name = name
    @departments = []
  end

  def add_departments(department)
    @departments << department
  end

  def all_employee_names
    @departments.map do |department|
      department.employees.map do |employee|
        employee.name
      end
    end.flatten
  end
end
