require 'spec_helper'

describe Spree::User do

   it { should have_one(:personal_information) }

end
