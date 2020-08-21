require 'bundler'

Bundler.require

class Larves
  def initialize
    # utilisation methode get pour avoir les infos sur les Larves
    @url = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
  end

  
  def saveJSON
    File.open("./db/larves.json", 'w') do |file|
      file.write(@url)
    end
    puts "Ecriture effectuer avec success!"
  end
end

class Monstres_des_cavernes
  def initialize
     # utilisation methode get pour avoir les infos sur les monstres des cavernes
    @url = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
  end

  def saveJSON1
    File.open("./db/Monstres_des_cavernes.json", 'w') do |file|
      file.write(@url)
    end
    puts "Ecriture effectuer avec success!"
  end
end

class Monstres_des_plaines
  def initialize
    # utilisation methode get pour avoir les infos sur les monstres des monstres des plaines herbeuses
    @url = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
  end

  def saveJSON2
    File.open("./db/Monstres_des_plaines_herbeuses.json", 'w') do |file|
      file.write(@url)
    end
    puts "Ecriture effectuer avec success!"
  end
end

 larves = Larves.new
  larves.to_json_larves

# Execution du class Monstres_des_cavernes
  monstres1 = Monstres_des_cavernes.new
  monstres1.to_json_monsters1

# Execution du class Monstres_des_plaines
  monstre2 = Monstres_des_plaines.new
  monstre2.to_json_monsters2
