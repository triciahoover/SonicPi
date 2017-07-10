# Welcome to Sonic Pi v2.11.1

# Welcome to Sonic Pi v2.11.1

def get bread()
  sample :ambi_choir
  #This is getting the bread
  play(30)
  sleep(1)
end

def add_peanut_butter(type)
  sample :ambi_glass_rub
  type = crunchy?
  #This is adding peanut butter
  play(type)
  sleep(1)
end

def jelly ()
  sample :ambi_drone
  #This is adding the jelly
  play(30)
  sleep(2)
end

def crunchy?()
  [true, false].sample
end

2.times do
  if crunchy? ()
    print "crunchy"
    type = "Crunchy"
  else
    print "Creamy"
    type ="Creamy"
  end
  add_peanut_butter(type)
end
