flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index {|name| name[0..1] == 'Be'}

flintstones.index {|name| name[0,2] == 'Be'}
  