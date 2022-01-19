require './lib/department'
require './lib/employee'
require './lib/division'

RSpec.describe Division do
  let(:division) { Division.new("One") }

  let(:bobbi) { Employee.new({ name: "Bobbi Jaeger", age: "30", salary: "100000" }) }
  let(:aaron) { Employee.new({ name: "Aaron Tanaka", age: "25", salary: "90000" }) }

  let(:customer_service) { Department.new("Customer Service") }
  let(:accounting) { Department.new("accounting") }
  let(:hr) { Department.new("Human Resources") }

  it 'exists' do
    expect(division).to be_instance_of(Division)
  end

  it 'has a name' do
    expect(division.name).to eq("One")
  end

  it 'can have mutiple departments' do
    expect(division.departments).to eq([])
  end

  it 'can add departments' do
    division.add_departments(customer_service)
    division.add_departments(accounting)
    division.add_departments(hr)
    expect(division.departments).to eq([customer_service, accounting, hr])
  end

  xit 'can list all departments with multiple employees' do
    division.add_departments(customer_service)
    division.add_departments(accounting)
    division.add_departments(hr)
  end
  describe '#list_all_employee_names' do
    it 'can list all division employee names' do
      division.add_departments(customer_service)
      division.add_departments(accounting)
      division.add_departments(hr)

      expect(division.all_employee_names).to eq(["Bobbi Jaeger", "Aaron Tanaka"])
    end
  end
end
