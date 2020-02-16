class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.integer :power
      t.string :name
    end
  end
end
