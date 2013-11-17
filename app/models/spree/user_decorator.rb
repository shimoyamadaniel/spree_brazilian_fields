module Spree

  User.class_eval do
    has_one :additional_information
    
    def name_label
      self.additional_information ? self.additional_information.name_label : self.email
    end
    
  end

end
