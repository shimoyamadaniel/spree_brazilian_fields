class CreateSpreePersonalInformations < ActiveRecord::Migration
  def change
    create_table :spree_personal_informations do |t|
      t.integer :user_id
      t.string :full_name, :limit => 100, :null => false
      t.string :cpf, :limit => 50, :null => false
      t.timestamps
    end
    add_index :spree_personal_informations, :user_id
  end
end
