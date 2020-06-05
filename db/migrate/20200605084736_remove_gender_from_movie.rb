class RemoveGenderFromMovie < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :gender, :string
  end
end
