# #5 Define RadndomData as a module becuase it is a standalone library with no dependencies or inheritance requirements
module RandomData
# #6 Define random_paragraph. Set sentences to an array. Create 4-6 random sentences and append them to sentences. Call join on sentences to combine each sentence in the array. join combines sentences to full paragraph as a string.
  def self.random_paragraph
    sentences = []
    rand(4..6).times do
      sentences << random_sentence
    end

    sentences.join(" ")
  end

# #7 Follow the same pattern as #6  to create a sentence with a random number of words. After we generate a sentence we call capitalize on it and append a period.
  def self.random_sentence
    strings = []
    rand(3..8).times do
      strings << random_word
    end

    sentence = strings.join(" ")
    sentence.capitalize << "."
  end

# #8 Define random_word. Set letters to an array of the letters a through z using to_a. Call shuffle! on letters in place. If we call without (!) then shuffle would return an array rather than shuffle in place. Join the zeroth through the nth item in letters. The nth item is a result of rand(3..8) which returns a random number greater than or equal to 3 and less than 8.
  def self.random_word
    letters = ('a'..'z').to_a
    letters.shuffle!
    letters[0,rand(3..8)].join
  end
end
