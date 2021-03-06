require 'spec_helper'

# MENU TABLE VALIDATIONS TESTING

describe Menu do

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
  end

end
