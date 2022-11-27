class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.references :level, null: false, foreign_key: true
      t.string :text, null: false
      t.string :correct_answer, null: false
      t.jsonb :options, null: false
      t.string :code, null: false

      t.timestamps
    end

    add_index :questions, :code, unique: true
  end
end
