#= require store/spree_frontend
jQuery ->
  disable = (field) ->
    $(field).prop('value', '')
    $(field).prop('disabled', true)
    
  enable = (field) ->
    $(field).prop('disabled', false)
  
  toggle_fields =->
    if $('#spree_user_additional_information_attributes_account_type_business').is(':checked')
      $('#personal_box').hide()
      $('#business_box').show()
    
      disable '#spree_user_additional_information_attributes_cpf'
      disable '#spree_user_additional_information_attributes_name'
      
      enable '#spree_user_additional_information_attributes_cnpj'   
      enable '#spree_user_additional_information_attributes_company_name'
      enable '#spree_user_additional_information_attributes_trading_name'
      enable '#spree_user_additional_information_attributes_state_registry'
    else
      $('#personal_box').show()
      $('#business_box').hide()
      
      disable '#spree_user_additional_information_attributes_cnpj'    
      disable '#spree_user_additional_information_attributes_company_name'
      disable '#spree_user_additional_information_attributes_trading_name'
      disable '#spree_user_additional_information_attributes_state_registry'
      
      enable '#spree_user_additional_information_attributes_cpf'
      enable '#spree_user_additional_information_attributes_name'

  $(document).ready(toggle_fields)
  $('[name="spree_user[additional_information_attributes][account_type]"]').click(toggle_fields)
