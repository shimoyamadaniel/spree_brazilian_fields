Spree::User.class_eval do

  has_one :personal_information, :class_name => "Spree::PersonalInformation"
  accepts_nested_attributes_for :personal_information

  def name_label
    self.additional_information ? self.additional_information.name_label : self.email
  end

end
