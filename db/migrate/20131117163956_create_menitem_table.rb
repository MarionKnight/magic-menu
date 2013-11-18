class CreateMenitemTable < ActiveRecord::Migration
  def change
    create_table :menitems do |t|
      t.belongs_to :menu
      t.belongs_to :item
      
      t.timestamps
    end
  end
end
