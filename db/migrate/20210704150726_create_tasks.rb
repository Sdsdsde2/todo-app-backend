class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task_title
      t.string :task_info
      t.integer :task_priority
      t.belongs_to :user
      t.timestamps
    end
  end
end
