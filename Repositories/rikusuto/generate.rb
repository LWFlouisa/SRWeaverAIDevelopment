xml_header   = '<?xml version="1.0" encoding="UTF-8"?>

<?xml-stylesheet type="text/css" href="stylesheet.css"?>'

topic_header = "<topic>"
topic_bottom = "</topic>"

def salut
  "  <salut>Hello</salut>"
end

def ejento
  agent_name = File.read("data/usr_identity/name.txt").strip.to_s

  "  <ejento>#{agent_name}</ejento>"
end

def rikusuto
  request_type = File.read("data/requests/request.txt").strip.to_s

  "  <rikusuto>#{request_type}</rikusuto>"
end

def atemu
  item = File.read("data/items/items.txt").strip.to_s

  "  <atemu>#{item}</atemu>"
end

def nitote
  "  <nitote>for</nitote>"
end

def kara
  "  <kara>from</kara>"
end

def yuza
  user_name = File.read("data/usr_identity/user_name.txt").strip.to_s

  "  <yuza>#{user_name}</yuza>"
end

def lieu
  local_name = File.read("data/usr_identity/local_name.txt").strip.to_s

  "  <lieu>#{local_name}</lieu>"
end

conjucate = [nitote, kara]
consign   = conjucate.sample

user_location = [yuza, lieu]
usign         = user_location[0]

open("index.xml", "w") { |f|
  f.puts xml_header
  f.puts topic_header
  f.puts salut
  f.puts ejento
  f.puts rikusuto
  f.puts atemu
  f.puts consign
  f.puts usign
  f.puts topic_bottom
}
