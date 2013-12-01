class AddBirthdayToPersonalInformation < ActiveRecord::Migration
  def change
    add_column :spree_personal_informations, :birthday, :date
  end
end
