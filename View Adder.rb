require'colorize'
require 'open-uri'

def name = <<-'EOF'
           _                   _       _     _           
    /\   /(_) _____      __   /_\   __| | __| | ___ _ __ 
    \ \ / / |/ _ \ \ /\ / /  //_\\ / _` |/ _` |/ _ \ '__|
     \ V /| |  __/\ V  V /  /  _  \ (_| | (_| |  __/ |   
      \_/ |_|\___| \_/\_/   \_/ \_/\__,_|\__,_|\___|_|   
                                                         
   EOF
puts "#{name}".blue

puts("\nVeuillez choisir votre Option (100 ou 1000) :")
scar = "\n[+] ".red
print(scar)
ok = gets.chomp
system("cls")
puts "#{name}".blue
puts "\nMetter votre compte Github :\n"
scar = "\n[+] ".red
print(scar)
raph = gets.chomp
if ok == 100
    (1..100).each do 
        system("curl https://camo.githubusercontent.com/#{raph}")
        system("cls")
    end
else ok == 1000
    (1..1000).each do 
        system("curl https://camo.githubusercontent.com/#{raph}")
        system("cls")
    end
end
puts "#{name}".blue
puts"\nVous avez eu +#{ok} views !"