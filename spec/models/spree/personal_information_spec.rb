require 'spec_helper'

describe Spree::PersonalInformation do

   it { should belong_to(:user) }

end
