class CreateHackers < ActiveRecord::Migration
  def change
    create_table :hackers do |t|
      t.string :name
      t.string :email
      t.integer :generation_id

      t.timestamps null: false
    end
  end
end
