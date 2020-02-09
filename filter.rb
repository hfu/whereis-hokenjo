require 'json'
DELETE_KEYS =
  %w{P28_002 P28_003 P28_004 P28_007 X Y No FLG Memo Memo2 memo3 memo4}

while gets
  f = JSON.parse($_)
  next unless f['properties']['P28_004'] == '13001'
  DELETE_KEYS.each {|key|
    f['properties'].delete(key)
  }
  f['tippecanoe'] = {
    :layer => 'hokenjo'
  }
  print JSON.dump(f), "\n"
end

