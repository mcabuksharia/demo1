class CreateMostImportants < ActiveRecord::Migration
  def change
    create_table :most_importants do |t|

      t.timestamps null: false
    end
  end
end
