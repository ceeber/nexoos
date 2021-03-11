class CreateCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :credits do |t|
      t.decimal :valor, precision: 15, scale: 2
      t.string :aceitar
      t.date :data_credito
      t.references :requester, null: false, foreign_key: true

      t.timestamps
    end
  end
end
