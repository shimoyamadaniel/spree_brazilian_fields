module Spree
  class PersonalInformation < ActiveRecord::Base

      validates :gender, :inclusion => { :in => %w(male female) }, :allow_blank => true
      validates :full_name, :presence => true, :length => { :maximum => 50 }
      validates :cpf, :uniqueness => true, :length => { :maximum => 50 }
      validates_with CpfValidator

      validates_date :birthday, 
              :before => lambda { 18.years.ago },
              :before_message => Spree.t(:must_be_at_least_18_years_old)

      validates :accepted_terms, :presence => { :message => Spree.t(:must_accept_terms) }

      belongs_to :user
  
  end
end
