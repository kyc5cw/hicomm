class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.string :name
      t.string :residence
      t.string :hometown
      t.text :education
      t.text :skills
      t.text :occupations
      t.date :date_of_birth
      t.text :about

      t.timestamps
    end
  end
end
