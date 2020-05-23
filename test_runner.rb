for klass in ARGV do
    system("ruby -Ilib:test spec/#{klass}_spec.rb")
end