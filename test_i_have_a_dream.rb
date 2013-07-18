# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in i_have_a_dream.rb
require_relative 'i_have_a_dream'


# do the test
describe 'frequencies' do
    it "counts elements in an array" do
        assert_equal({'a'=>2, 'b'=>1}, frequencies('a b a'))
    end
end

describe 'remove_stop_words' do
    it "removes stop_words from the hash" do
        assert_equal({"cat" => 1, "dog" => 1}, remove_stop_words({"a"=>2, "cat"=> 1, "and"=>1, "dog"=>1}))
    end
end
