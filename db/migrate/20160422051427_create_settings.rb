class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.belongs_to :user
      t.integer "lastidentity_id"
      t.integer "lastsubject_id"
      t.integer "lastpost_id"
      t.integer "setlevel"
      t.timestamps null: false
    end
  end
end
