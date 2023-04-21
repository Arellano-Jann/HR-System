defmodule HrSystemWeb.EmployeeApiJSON do
  def index(%{employees: employees}) do
    %{data:
      for(employee <- employees) do
        [
          %{id: employee.id},
          %{last_name: employee.last_name},
          %{first_name: employee.first_name},
          %{hire_date: employee.hire_date},
          %{department: employee.department}
        ]
      end
    }
  end
end
