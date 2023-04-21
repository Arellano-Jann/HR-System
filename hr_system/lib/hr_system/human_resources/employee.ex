defmodule HrSystem.HumanResources.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  schema "employees" do
    field :department, :string
    field :first_name, :string
    field :hire_date, :date
    field :last_name, :string

    timestamps()
  end

  @doc false
  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [:last_name, :first_name, :hire_date, :department])
    |> validate_required([:last_name, :first_name, :hire_date, :department])
  end
end
