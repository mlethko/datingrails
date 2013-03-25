class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.integer :age
      t.integer :height
      t.string :eyes
      t.string :sex
      t.string :seeks
      t.string :from
      t.string :homepage
      t.string :photo
      t.text :interests

      t.timestamps
    end
  end
end
