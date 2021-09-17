# Create an archive of the data.
data_archive = File.read("data/memory/data_archive.txt").strip.to_s

# Create a label for the model.
print "Label >> "; label = gets.chomp

# Choose a word for that label.
print "Word  >> "; word  = gets.chomp

# Create a training example from label and word.
new_model    = "a.train(#{label}, #{word}, 'word')"

# Assign new baysian model with data archive and new model.
baysian_model = "
  print '>> '; input = gets.chomp.split(" ")

  number = 0

  size_limit = input.size.to_i

  # Estimate each word in a sentence from a label.
  size_limit.times do
    require 'naive_bayes'

    a = NaiveBayes.new(:honorific,
                       :greeting,
                       :personal_pronouns,
                       :offensive_pronouns,
                       :word_genders,
                       :family,
                       :colors,
                       :clothes,
                       :food,
                       :conjunctions,
                       :request,
                       :locations,
    )

    #{data_archive}; #{new_model};

    b = input[number]

    print 'Results >> #{a.classify(*b)}'

    sleep(1)

    number = number + 1
  end
"

# Create active archive of data.
open("data/memory/data_archive.txt") { |f|
  f.puts "#{data_archive}; #{new_model}"
}
