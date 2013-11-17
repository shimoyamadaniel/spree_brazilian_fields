class CreateSpreeAdditionalInformations < ActiveRecord::Migration

  def change

    create_table :spree_additional_informations do |t|
      t.integer :user_id
    
      t.string :cnpj, :limit => 30
      t.string :company_name, :limit => 50
      t.string :trading_name, :limit => 50
      t.string :state_registry, :limit => 50

      t.string :name, :limit => 50
      t.string :cpf, :limit => 30
      t.string :account_type, :limit => 20
      t.timestamps
    end
    add_index :spree_additional_informations, :user_id
  end
end
