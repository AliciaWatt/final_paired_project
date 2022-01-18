require './lib/department'
require './lib/employee'
require './lib/budget'

 RSpec.describe Budget do
   let(:budget) {Budget.new("2020")}

   let(:bobbi) {Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})}
   let(:aaron) {Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})}

   let(:customer_service) {Department.new("Customer Service")}
   let(:accounting) {Department.new("accounting")}
   let(:hr) {Department.new("Human Resources")}

 	it 'exists' do
 		expect(budget).to be_instance_of(Budget)
 	end

  it 'has a year' do
    expect(budget.year).to eq("2020")
  end

  it 'can have mutiple departments' do
    expect(budget.departments).to eq([])
  end

  it 'can add departments' do
    budget.add_departments(customer_service)
    budget.add_departments(accounting)
    budget.add_departments(hr)
    expect(budget.departments).to eq(["accounting", "Human Resources"])
  end

  it 'can list departments' do
    budget.add_departments(customer_service)
    budget.add_departments(accounting)
    budget.add_departments(hr)

    expect(budget.departments).to eq([customer_service, accounting, hr])
  end

  it 'can list all departments with expenses less than $500' do

  end

   it 'can list all employees salaries' do
     employee.salary(bobbi)
     employee.salary(aaron)

     expect(budget.list_employees_by_salary).to eq(["100000", "90000"])
   end
end
