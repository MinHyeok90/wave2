class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer "power"
      t.string "realID"
      t.string "pw"
      t.timestamps null: false
    end
  end
end
