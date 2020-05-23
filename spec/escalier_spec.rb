require "minitest/autorun"
require 'minitest/spec'
require "./spec/mocks/escalier_mocks"

describe EscalierMocks do
  before do
    @escalier = EscalierMocks.new(5)
    @escalier.perform
  end

  describe "perform" do
    it "shoud show a n=5 staircase" do
        
    end
  end
end