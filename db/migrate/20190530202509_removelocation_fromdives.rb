class RemovelocationFromdives < ActiveRecord::Migration[5.2]
  def change
    remove_column :dives, :location, :string
  end
end
