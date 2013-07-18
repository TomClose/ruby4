require 'erb'
require 'json'


# Read the text in from the file and remove the capitals and punctuation
def text
    File.open('i_have_a_dream.txt', 'r') do |f|
        puts "Opening 'i_have_a_dream.txt'..."
        raw_text = f.read  # read the contents of the file
        text = raw_text.downcase  # remove capitals

        text = text.gsub(/[^a-z\s]/, '')  # remove everything apart from a-z and spaces

        # gsub uses a regular expression. The / / mark the start and end of the expression
        # [^  ] means "everything apart from things in this bracket"
        # a-z \s means characters a-z and spaces
        # gsub then replaces every character apart from a-z and spaces with the empty string
        return text
    end
end


# Reads in a string of (unpunctuated, downcased) text
# and returns a hash of frequencies e.g.
#
#  frequencies("a cat and a dog") #=> {"a"=>2, "cat"=> 1, "and"=>1, "dog"=>1}
#
def frequencies(text)
    puts "Counting words..."
    ## TODO write this function

    return {'everyone'=>15, 'code first girls'=>30, 'loves'=>20, 'ruby'=>40}
end


# stop_words are common filling words that should be removed
# before doing word visualisations
def stop_words
    # Words taken from Jonathan Feinberg's cue.language (via jasondavies.com), see lib/cue.language/license.txt.
    "i|me|my|myself|we|us|our|ours|ourselves|you|your|yours|yourself|yourselves|he|him|his|himself|she|her|hers|herself|it|its|itself|they|them|their|theirs|themselves|what|which|who|whom|whose|this|that|these|those|am|is|are|was|were|be|been|being|have|has|had|having|do|does|did|doing|will|would|should|can|could|ought|im|youre|hes|shes|its|were|theyre|ive|youve|weve|theyve|id|youd|hed|shed|wed|theyd|ill|youll|hell|shell|well|theyll|isnt|arent|wasnt|werent|hasnt|havent|hadnt|doesnt|dont|didnt|wont|wouldnt|shant|shouldnt|cant|cannot|couldnt|mustnt|lets|thats|whos|whats|heres|theres|whens|wheres|whys|hows|a|an|the|and|but|if|or|because|as|until|while|of|at|by|for|with|about|against|between|into|through|during|before|after|above|below|to|from|up|upon|down|in|out|on|off|over|under|again|further|then|once|here|there|when|where|why|how|all|any|both|each|few|more|most|other|some|such|no|nor|not|only|own|same|so|than|too|very|say|says|said|shall"
end

# Takes in a hash of words and requencies and removes the
# stop_words above
#
#   e.g. remove_stop_words({"a"=>2, "cat"=> 1, "and"=>1, "dog"=>1})
#         #=> {"cat" => 1, "dog" => 1}
#
def remove_stop_words(hash)
    puts "Filtering out common words..."
    # TODO filter the frequencies based on
    # the stop_words
    return hash
end

def write_html(data)
    puts "Creating html..."
    words_with_frequencies = data.to_a
    erb = ERB.new(File.read('index.html.erb'))
    File.open('index.html', 'w') do |f|
        f.write(erb.result(binding))
    end
    puts "Output written to index.html. Enjoy!"
end


# when we call the file from the command line
# this is the line that will run.
write_html(remove_stop_words(frequencies(text)))

