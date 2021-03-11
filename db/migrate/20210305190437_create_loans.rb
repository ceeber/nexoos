class CreateLoans < ActiveRecord::Migration[6.0]
  def change
    create_table :loans do |t|
      t.decimal :valor, precision: 15, scale: 2
      t.integer :prazo
      t.decimal :taxa, precision: 15, scale: 3      
      t.references :credit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
