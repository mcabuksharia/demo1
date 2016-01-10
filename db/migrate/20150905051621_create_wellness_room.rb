class CreateWellnessRoom < ActiveRecord::Migration
  def change
    create_table :wellness_rooms do |t|
      t.string :name
      t.string :desc
      t.references :most_important, index: true, foreign_key: true
    end
  end
end
