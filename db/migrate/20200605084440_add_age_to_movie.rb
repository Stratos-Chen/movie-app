class AddAgeToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :age, :integer
  end
end
