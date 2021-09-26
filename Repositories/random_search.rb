
# Shuffle options list and compare option and candidate
def random_search
  number = 0

  options_list = File.read("options/option_list.txt").to_s.split(" ").shuffle

  # Candidate files
  candidate = File.read("candidate/algorithm_candidate.txt").strip.to_s

  # Bases iteration limit on options list size.
  size_limit = options_list.size.to_i

  # Iterate size limit times comparing option with candidate.
  size_limit.times do
    option = options_list[number]

    print "Candidate: #{candidate} Option: #{option} >> "

    if option == candidate
      puts " #{option} matches the candidate #{candidate}."

      abort
    else
      puts " #{option} does not match the candidate #{candidate}."
    end

    sleep(3)

    number = number + 1
  end
end

random_search
