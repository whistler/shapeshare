class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :name
      t.string :title
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
