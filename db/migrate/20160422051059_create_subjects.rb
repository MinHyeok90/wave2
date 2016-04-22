class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.belongs_to :identity
      t.integer "order"
      t.string "title"
      t.text "goal"
      t.timestamps null: false
    end
  end
end
