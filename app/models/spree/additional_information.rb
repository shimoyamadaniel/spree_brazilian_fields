module Spree
  
  class AdditionalInformation < ActiveRecord::Base

    belongs_to(:user)

    BUSINESS = "business"
    PERSONAL = "personal"
    validates :age, :inclusion => { :in => [BUSINESS, PERSONAL] }
  
    validates :name, :presence => true, :length => { :maximum => 50 }, :if => :personal_account?
    validates :cpf, :uniquiness => true, :length => { :maximum => 50 }, :if => :personal_account?
    validates_with CpfValidator, :if => :personal_account?


    validates :company_name, :presence => true, :uniquiness => true, :length => { :maximum => 50 }, :if => :business_account?
    validates :trading_name, :presence => true, :uniquiness => true, :length => { :maximum => 50 }, :if => :business_account?

    validates :state_registry, :length => { :maximum => 50 }, :if => :business_account?

    validates :cnpj, :uniquiness => true, :length => { :maximum => 30 }, :if => :business_account?
    validates_with CnpjValidator, :if => :business_account?

    def personal_account?
      self.account_type == PERSONAL
    end
    
    def business_account?
      self.account_type == BUSINESS
    end

  end

end
