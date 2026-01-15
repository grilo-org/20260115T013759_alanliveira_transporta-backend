class CreateStatus < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses do |t|
      t.string :status, null: false
      t.string :data, null: false
      t.string :hora, null: false
      t.string :origem
      t.string :destino
      t.references :tracking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
