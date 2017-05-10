require("spec_helper")

describe(Project) do
  it("has many employees") do
    test_project = Project.create({:name => "Terribly important project"})
    test_employee1 = Employee.create({:name => "Marie-Grace Gardner", :project_id => test_project.id})
    test_project.employees.push(test_employee1)
    expect(test_project.employees()).to(eq([test_employee1]))
  end
end
