require "decisiontree"

# Continuous Dice
dice = [10.50, 10.75, 21.25,
        21.50, 21.75, 82.25,
        82.50, 82.75, 73.25,
        73.50, 73.75, 54.25,
        54.50, 54.75, 10.50]

input = dice.sample.to_i

attributes = ['Rikusuto']

training = [
  [  0.5,    "will you get"],
  [ 50.0, "will you obtain"],
  [100.0,      "may I have"],
]

# Instantiate the tree, and train it based on the data (set default to '1')
dec_tree = DecisionTree::ID3Tree.new(attributes, training, 1, :continuous)
dec_tree.train

test = [input, "may I have"]

decision = dec_tree.predict(test)

# puts "Desired Result: #{decision} ... True Result: #{test.last}"

open("data/rikusuto/request.txt", "w") { |f|
  f.puts decision
}
