module Tools # módulos son para almacenar métodos
    def sayhi(name)
        puts "hello #{name}"
    end

    def saybye(name)
        puts "bye #{name}"
    end
end


include Tools
Tools.sayhi("albert")
Tools.saybye("albert")