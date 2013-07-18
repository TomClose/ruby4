# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in symbolize_keys.rb
require_relative 'symbolize_keys'


# do the test
describe 'symbolize_keys' do
    it "handles an array with keys that are strings or symbols" do
        assert_equal({:a=>1, :b=>2}, symbolize_keys({'a'=>1, :b=>2}))
    end
end
