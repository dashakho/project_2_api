class CreateFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :facts do |t|
      t.string :category
      t.string :level
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
