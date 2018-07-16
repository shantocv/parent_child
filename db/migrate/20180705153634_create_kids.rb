class CreateKids < ActiveRecord::Migration[5.2]
  def change
    create_table :kids do |t|
      t.string :name
      t.references :mom, foreign_key: true

      t.timestamps
    end
  end
end
