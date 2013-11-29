class RemoveSpreeAdditionalInformation < ActiveRecord::Migration
  def change
    drop_table :spree_additional_informations if self.table_exists?("spree_additional_informations")
  end
end
