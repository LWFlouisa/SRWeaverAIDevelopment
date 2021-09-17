# Create an archive of the data.
data_archive = File.read("data/memory/data_archive.txt").strip.to_s

# Create a label for the model.
print "Label >> "; label = gets.chomp

# Choose a word for that label.
print "Word  >> "; word  = gets.chomp

# Create a training example from label and word.
new_model    = "a.train(:#{label}, '#{word}', 'word')"

# Assign new baysian model with data archive and new model.
baysian_model = "
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

    a.db_filepath = 'data/memory/archive.nb'

    #{data_archive}
    #{new_model}

    print '<< '
    b = gets.chomp

    print 'Results >> '
    puts a.classify(*b)
"

# Create active archive of data.
open("data/memory/data_archive.txt", "w") { |f|
  f.puts "#{data_archive}"
  f.puts "#{new_model}"
}

open("loader.rb", "w") { |f|
  f.puts baysian_model
}

# Loads the actual tester.
# system("ruby loader.rb")
