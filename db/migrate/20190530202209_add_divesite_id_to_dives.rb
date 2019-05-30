class AddDivesiteIdToDives < ActiveRecord::Migration[5.2]
  def change
    add_column :dives, :divesite_id, :integer
  end
end
