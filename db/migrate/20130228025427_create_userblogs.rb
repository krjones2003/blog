class CreateUserblogs < ActiveRecord::Migration
  def change
    create_table :userblogs do |t|
      t.string :title
      t.string :description
      t.references :user

      t.timestamps
    end
    add_index :userblogs, :user_id
  end
end
