require 'rails_helper'

RSpec.describe Cat, type: :model do
    it "should validate name" do
      cat = Cat.create
      expect(cat.errors[:name]).to_not be_empty
    end

    it "should validate age" do
        cat = Cat.create
        expect(cat.errors[:age]).to_not be_empty
    end 

    it "should validate hobby" do
        cat = Cat.create
        expect(cat.errors[:hobby]).to_not be_empty
    end 

    it "should validate hobby with a minimum of 10 characters" do
        cat = Cat.create
        expect(cat.validates_length_of[:hobby]).is_at_least(10)
    end

    # it { should validate_length_of(:hobby).is_at_least(10) }


  end