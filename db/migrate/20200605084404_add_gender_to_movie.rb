class AddGenderToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :gender, :string
  end
end
