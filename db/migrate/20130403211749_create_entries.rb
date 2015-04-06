class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :content
      t.references :userblog

      t.timestamps
    end
    add_index :entries, :userblog_id
  end
end
