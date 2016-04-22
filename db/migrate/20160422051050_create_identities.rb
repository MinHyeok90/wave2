class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.belongs_to :user
      t.integer "order"
      t.string "role"
      t.text "objective"
      t.timestamps null: false
    end
  end
end
