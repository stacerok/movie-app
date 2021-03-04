class AddAgeToActors < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :age, :integer
  end
end
