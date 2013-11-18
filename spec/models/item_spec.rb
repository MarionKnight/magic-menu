require 'spec_helper'

# ITEM TABLE VALIDATIONS TESTING

describe Item do

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
  end

end