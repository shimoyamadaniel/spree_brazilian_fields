module Spree
  class PersonalInformation < ActiveRecord::Base

      validates :age, :inclusion => { :in => %w(male female) }, :allow_blank => true
      validates :full_name, :presence => true, :length => { :maximum => 50 }
      validates :cpf, :uniqueness => true, :length => { :maximum => 50 }
      validates_with CpfValidator

      validates_date :date_of_birth, :before => lambda { 18.years.ago },
                               :before_message => Spree.t(:must_be_at_least_18_years_old)

      belongs_to :user
  
  end
end
