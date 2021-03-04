class ChangeEnglishInMovies < ActiveRecord::Migration[6.1]
  def change
    change_column_null :movies, :english, :boolean, default: true

  end
end
