class RenameEnglish < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :english, :english?
  end
end
