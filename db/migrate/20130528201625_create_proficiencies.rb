class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.references :user
      t.references :skill 
      t.integer :rating, :default => 0

      t.timestamps
    end
    add_index(:proficiencies, [:user_id, :skill_id], :unique => true)
  end
end
