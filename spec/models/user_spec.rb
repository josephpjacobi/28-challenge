require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User Creation" do
    context "when an email already exists in the database" do
      it "should not create a new user" do
        
      end
    end

    context "in a state where we offer services" do
      it "should include all attributes" do
      
      end

      it "should create a user when the age requirement is met" do
        
      end

      it "should NOT create a user when the age requirement is NOT met" do
        
      end
    end

    context "in a state where we do not offer services" do
      it " should not create a user" do
        
      end
    end
  end
end
