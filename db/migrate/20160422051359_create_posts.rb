class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :subject
      t.text "plan"
      t.text "feedback"
      t.text "imgurl"
      t.timestamps null: false
    end
  end
end
