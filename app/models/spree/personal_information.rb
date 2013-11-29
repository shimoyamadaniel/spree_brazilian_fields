module Spree
  class PersonalInformation < ActiveRecord::Base

      validates :name, :presence => true, :length => { :maximum => 50 }
      validates :cpf, :uniqueness => true, :length => { :maximum => 50 }
      validates_with CpfValidator

      belongs_to(:user)

  end
end
