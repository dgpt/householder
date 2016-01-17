class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description
      t.datetime :due_by
      t.boolean :complete, default: false

      t.string :context_type, null: false
      t.integer :context_id, null: false

      t.timestamps null: false
    end

    add_index :tasks, :context_id
  end
end
