class AddGenderToActors < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :gender, :string
  end
end
