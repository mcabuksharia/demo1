class CreateCatalog < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :name
      t.string :desc
      t.references :most_important, index: true, foreign_key: true

    end
  end
end
