class CreateDivesites < ActiveRecord::Migration[5.2]
  def change
    create_table :divesites do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :img_url

      t.timestamps
    end
  end
end
