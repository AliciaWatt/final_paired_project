class Budget
 	attr_reader :year, :departments

 	def initialize(year)
 		@year = year
    @departments = []
 	end

  def add_departments(department)
    @departments << department
  end

  def departments

  end

  # def list_employees_by_salary
  #   @employee.map |em|
  # end

end
