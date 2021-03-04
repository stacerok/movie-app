class AddEnglishToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :english, :boolean
  end
end
