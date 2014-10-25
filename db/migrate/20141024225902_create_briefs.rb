class CreateBriefs < ActiveRecord::Migration
  def change
    create_table :briefs do |t|
      t.integer :user_id
      t.string :brief

      t.timestamps
    end
  end
end
