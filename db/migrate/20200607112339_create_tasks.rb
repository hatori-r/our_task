class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :state
      t.text :task
      t.text :image
      t.integer :user_id
      t.date :limit_date
      t.timestamps
    end
  end
end
