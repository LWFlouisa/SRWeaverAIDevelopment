
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

    a.train(:greeting, 'ehiyo', 'word')
    a.train(:personal_pronouns, 'nehi', 'word')
    a.train(:personal_pronouns, 'miyo', 'word')
    a.train(:personal_pronouns, 'tiyo', 'word')
    a.train(:personal_pronouns, 'niyo', 'word')
    a.train(:personal_pronouns, 'iye', 'word')
    a.train(:personal_pronouns, 'iyesu', 'word')
    a.train(:personal_pronouns, 'eye', 'word')
    a.train(:personal_pronouns, 'eyesa', 'word')

    print '<< '
    b = gets.chomp

    print 'Results >> '
    puts a.classify(*b)
