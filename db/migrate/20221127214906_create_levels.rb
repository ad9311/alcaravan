class CreateLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :levels do |t|
      t.references :course, null: false, foreign_key: true
      t.text :text
      t.text :text_source
      t.text :image_url
      t.text :image_source
      t.text :video_url
      t.text :video_source
      t.string :code

      t.timestamps
    end

    add_index :levels, :code, unique: true
  end
end
