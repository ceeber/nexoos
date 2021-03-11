class CreateRequesters < ActiveRecord::Migration[6.0]
  def change
    create_table :requesters do |t|
      t.string :nome
      t.text :cnpj
      t.text :telefone
      t.text :telefone2
      t.text :nascimento
      t.string :endereco
      t.string :endereco2
      t.integer :numero
      t.string :uf
      

      t.timestamps
    end
  end
end
