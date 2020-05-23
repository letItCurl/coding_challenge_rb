require "minitest/autorun"
require 'minitest/spec'
require "../hola_mundo/hola"

describe Hola do
  before do
    @hola = Hola.new
  end

  describe "hola" do
    it "esta prueba tiene que saludar :)" do
      _(@hola.saludos).must_equal "hola mundo!"
    end
  end
end