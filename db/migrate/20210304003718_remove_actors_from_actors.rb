class RemoveActorsFromActors < ActiveRecord::Migration[6.1]
  def change
    remove_column :actors, :actors, :integer
  end
end
