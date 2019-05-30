class CreateDives < ActiveRecord::Migration[5.2]
  def change
    create_table :dives do |t|
      t.string :date
      t.string :location
      t.integer :dive_no
      t.string  :time_in
      t.string  :time_out
      t.string  :exposures_protection
      t.string  :visibility
      t.string  :computer
      t.integer :PSI_start
      t.integer :PSI_end
      t.integer :weight_lbs
      t.integer :tempature_air
      t.integer :tempature_surface
      t.integer :tempature_bottom
      t.text    :comments
      t.integer :profile_id

      t.timestamps
    end
  end
end
