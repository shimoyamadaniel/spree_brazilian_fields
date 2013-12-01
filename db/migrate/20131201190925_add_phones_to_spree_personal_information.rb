class AddPhonesToSpreePersonalInformation < ActiveRecord::Migration
  def change
    add_column :spree_personal_informations, :phone, :string, :limit => 20
    add_column :spree_personal_informations, :cellphone, :string, :limit => 20
  end
end
