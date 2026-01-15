class CreateTracking < ActiveRecord::Migration[6.1]
  def change
    create_table :trackings do |t|
      t.string :codigo, null: false
      t.text :descricao

      t.timestamps
    end
  end
end
