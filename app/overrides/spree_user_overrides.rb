Deface::Override.new(
  :virtual_path  => "spree/user_registrations/new",
  :name => "new_brazilian_user_form",
  :replace => "[data-hook='signup_inside_form']",
  :template => "spree/brazilian_user_form"
)
