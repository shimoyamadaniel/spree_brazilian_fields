module Spree

  UserRegistrationsController.class_eval do
    def new
      @user = resource
      resource = build_resource({})
      resource.build_additional_information
      respond_with resource
    end

    private
    
    def spree_user_params
      attributes = Spree::PermittedAttributes.user_attributes
      attributes += [:additional_information_attributes => [:cpf, :cnpj, :name, :trading_name, :company_name, :state_registry, :account_type]]
      params.require(:spree_user).permit(attributes)
    end

  end

end
