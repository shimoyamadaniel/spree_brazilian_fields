class AddAcceptedTermsForSpreePersonalInformations < ActiveRecord::Migration
  def change
    add_column :spree_personal_informations, :accepted_terms, :boolean
  end
end
