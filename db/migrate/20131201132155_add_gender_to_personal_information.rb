class AddGenderToPersonalInformation < ActiveRecord::Migration
  def change
    add_column :spree_personal_informations, :gender, :string
  end
end
