class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.text :content
      t.text :reference
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
