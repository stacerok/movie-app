class RemoveGendreFromMovie < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :genre, :string
  end
end
