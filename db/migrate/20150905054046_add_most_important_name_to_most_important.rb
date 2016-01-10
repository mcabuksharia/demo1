class AddMostImportantNameToMostImportant < ActiveRecord::Migration
  def change
    add_column :most_importants, :name, :string
  end
end
