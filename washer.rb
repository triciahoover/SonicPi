# Welcome to Sonic Pi v2.11.1

def wear(smell)
  sample :ambi_haunted_hum, rate: smell
  #This is wearing the clothes to dirty them
  play(30)
  sleep(1)
end

def wash(temperature)
  sample :ambi_dark_woosh
  #This is washing the clothes
  play(temperature)
  sleep(1)
end

def dry()
  sample :ambi_drone
  #This is drying the clothes
  play(30)
  sleep(2)
end

def laundry_stained?()
  [true, false].sample
end

def treat_stain()
  sample :bd_sone
end


def dont_treat()
  sample :ambi_piano
end

2.times do
  wear(1)
  if laundry_stained?()
    print "your stained"
    treat_stain()
  else
    dont_treat()
    print "No stain"
  end
  wash(1)
  dry()
end
