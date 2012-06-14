class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :body
      t.integer :site_id
      t.integer :status_id

      t.timestamps
    end
  end
end
