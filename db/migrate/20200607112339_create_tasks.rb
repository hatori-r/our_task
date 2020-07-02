class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :state
      t.string :name
      t.text :task
      t.text :image
      t.date :limit_date
      t.timestamps
    end
  end
end
