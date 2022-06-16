require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject (:cheesecake) {Dessert.new("cheesecake", 10)}
  let(:chef) { double("chef") }
  
  describe "#initialize" do
    it "sets a type" do
      expect(cheesecake.type).to eq ('cheesecake')
    end

    it "sets a quantity" do
      expect(cheesecake.quantity).to eq (10)
    end

    it "starts ingredients as an empty array" do 
      expect(cheesecake.ingredients).to eq ([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("cheesecake", "alot")}.to raise_error('Invalid value for quantity')
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cheesecake.ingredients.push('eggs')
      expect(cheesecake.instance_variable_get(:@ingredients)).to eq(['eggs'])
    end

  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
