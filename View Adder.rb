require'colorize'
require 'net/http'
require 'uri'
require 'os'

def clear()
    if OS.windows?
        system("cls")
    else
        system("clear")
    end
end

class Signature


    def asciitexto()
        ascitext = Net::HTTP.get(URI("http://artii.herokuapp.com/make?text=ViewAdder"))
        puts"#{ascitext}".blue
    end

    def created()
        puts"              **Create by Rxphgui**".green
        puts"              **Developped on Ruby**".red
    end

    def touttext
        asciitexto()
        created()
    end

end

class Choix

    attr_accessor :ok, :compte
    
    def starting()
        print("\nVeuillez choisir le nombre de vues que vous voulez: ")
        scar = "\n[+] ".red
        print(scar)
        self.ok = gets.chomp.to_i
        clear()
    end

    def account()
        puts Sign.asciitexto
        print("\nVeuillez rentrer votre compte github : ")
        scar = "\n[+] ".red
        print(scar)
        self.compte = gets.chomp
        clear()
    end
    
    def lancement()
        puts Sign.asciitexto
        (1..self.ok).each do |i|  
            req = Net::HTTP.get(URI("https://camo.githubusercontent.com/#{self.compte}"))
            print "#{i} views added\r"
        end
    end

end   

Sign = Signature.new()
Cchoix = Choix.new()

puts Sign.touttext
Cchoix.starting()
Cchoix.account()
Cchoix.lancement()
