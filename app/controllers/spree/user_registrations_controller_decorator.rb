module Spree

  UserRegistrationsController.class_eval do
    def new
      @user = resource
      resource = build_resource({})
      resource.build_personal_information
      respond_with resource
    end

    private
    
    def spree_user_params
      attributes = Spree::PermittedAttributes.user_attributes
      attributes += [:personal_information_attributes => [:cpf, :full_name]]
      params.require(:spree_user).permit(attributes)
    end

  end

end
