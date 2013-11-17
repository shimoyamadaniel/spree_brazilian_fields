Spree::User.class_eval do

  has_one :additional_information, :class_name => "Spree::AdditionalInformation"
  accepts_nested_attributes_for :additional_information

  def name_label
    self.additional_information ? self.additional_information.name_label : self.email
  end

end
