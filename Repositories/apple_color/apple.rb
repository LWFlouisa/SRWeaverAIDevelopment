## Decides on what color an apple is, and what action to take.
def apple
  def what_color
    input = File.read("data/apple/colors/color_chart.txt").split(" ")

    number = 0

    size_limit = input.size.to_i

    # Estimate each word in a sentence from a label.
    size_limit.times do
      require 'naive_bayes'

      color = NaiveBayes.new(:red, :green, :yellow)

      # Trains on apple colors.
      a.train(:red,       "red", "word")
      a.train(:green,   "green", "word")
      a.train(:yellow, "yellow", "word")

      b = input[number]

      print 'Results >> #{color.classify(*b)}'

      sleep(1)

      number = number + 1
    end
  end

  def what_action
    input = File.read("data/apple/actions/action_chart.txt").split(" ")

    number = 0

    size_limit = input.size.to_i

    # Estimate each word in a sentence from a label.
    size_limit.times do
      require 'naive_bayes'

      action = NaiveBayes.new(:eat, :toss)

      # Trains on apple colors.
      a.train(:eat,     "eat", "word")
      a.train(:toss,   "toss", "word")

      b = input[number]

      print 'Results >> #{action.classify(*b)}'

      sleep(1)

      number = number + 1
    end
  end

  print "Deciding on color...\n\n"; sleep(3)

  what_color

  print "Deciding on action...\n\n"; sleep(3)

  what_action
end
