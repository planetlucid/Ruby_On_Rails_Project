class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
    t.belongs_to :hero
    t.belongs_to :comic
    t.string :name
    end
  end
end
