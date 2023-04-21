defmodule HrSystem.Repo.Migrations.CreateEmployees do
  use Ecto.Migration

  def change do
    create table(:employees) do
      add :last_name, :string
      add :first_name, :string
      add :hire_date, :date
      add :department, :string

      timestamps()
    end
  end
end
