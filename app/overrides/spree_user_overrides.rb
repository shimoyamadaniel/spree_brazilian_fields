Deface::Override.new(
  :virtual_path  => "spree/user_registrations/new",
  :name => "new_brazilian_user_form",
  :replace => "[data-hook='signup_inside_form']",
  :template => "spree/brazilian_user_form"
)

Deface::Override.new(
  :virtual_path => "spree/user_registrations/new",
  :name => "new_brazilian_user_form_submit_button",
  :insert_after => "#password-credentials",
  :text => "<p><%= f.submit Spree.t(:create), :class => 'button primary' %></p>"
)

Deface::Override.new(
  :virtual_path => "spree/users/edit",
  :name => "edit_brazilian_user_form",
  :replace => %q{erb[loud]:contains("render :partial => 'spree/shared/user_form', :locals => { :f => f }")},
  :text => "<%= render(:template => 'spree/brazilian_user_form', :locals => { :f => f }) %>"
)
