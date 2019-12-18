class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
