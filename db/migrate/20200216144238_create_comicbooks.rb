class CreateComicbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :comicbooks do |t|
      t.string :title
      t.references :person, null: false, foreign_key: true
      t.references :squad, null: false, foreign_key: true

      t.timestamps
    end
  end
end
