class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, limit: 80, null: false
      t.belongs_to :reviews, null: false
      t.belongs_to :destinations, null: false
    
      t.timestamps
    end
  end
end
