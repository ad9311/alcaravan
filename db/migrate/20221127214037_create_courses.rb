class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :code, null: false
      t.string :name, null: false

      t.timestamps
    end

    add_index :courses, :code, unique: true
  end
end
