# Read number from file number.
number = File.read("data/number/integer.txt").strip.to_i

# List of system types.
sys_types = File.readlines("data/system_types/systypes.txt")

# The modulus is the total size of the system type list.
modulus = sys_types.size.to_i

# Get the true number.
true_number = number % modulus

# Get the current program type from the true number.
current_type = sys_types[true_number]

type = current_type.strip

# Write chosen program type in shell.
open("exec.sh", "w") { |f|
  f.puts current_type
}

# Increase file number by incremental value.
number = number + 1

open("data/number/integer.txt", "w") { |f|
  f.puts number
}

system("chmod +rwx exec.sh")
