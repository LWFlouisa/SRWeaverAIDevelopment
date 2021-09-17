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
                   :locations)

# load('data/memory/archive.nb')

a.train(:greeting, 'ehiyo', 'word')
a.train(:personal_pronouns, 'nehi', 'word')
a.train(:personal_pronouns, 'miyo', 'word')
a.train(:personal_pronouns, 'viyo', 'word')
a.train(:personal_pronouns, 'tiyo', 'word')
a.train(:personal_pronouns, 'niyo', 'word')

b = "ehiyo"

print "Results >> #{a.classify(*b)}"
