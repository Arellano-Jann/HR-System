defmodule HrSystem.HumanResourcesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `HrSystem.HumanResources` context.
  """

  @doc """
  Generate a employee.
  """
  def employee_fixture(attrs \\ %{}) do
    {:ok, employee} =
      attrs
      |> Enum.into(%{
        department: "some department",
        first_name: "some first_name",
        hire_date: ~D[2023-04-20],
        last_name: "some last_name"
      })
      |> HrSystem.HumanResources.create_employee()

    employee
  end
end
