class CreatePlots < ActiveRecord::Migration[6.0]
  def change
    create_table :plots do |t|
      t.integer :parcela
      t.decimal :valorParcela, precision: 10, scale: 2
      t.string :pago
      t.references :loan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
