class RemoveAgeFromMovie < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :age, :integer
  end
end
