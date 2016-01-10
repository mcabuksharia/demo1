class CreateCampaign < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :desc
      t.references :most_important, index: true, foreign_key: true
      t.references :catalog, index: true, foreign_key: true

    end
  end
end
