class CreateItemTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
