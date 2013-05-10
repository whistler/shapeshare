class AddDownloadCountToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :download_count, :integer
  end
end
