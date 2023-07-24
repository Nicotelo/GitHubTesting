class Chef
    def make_chicken
        puts "The chef makes chicken"
    end
    def make_salad
        puts "The chef makes salad"
    end
    def make_special_dish
        puts "The chef makes bbq ribs"
    end
end


class ItalianChef < Chef # esto es para que se extienda de esa clase
    def make_special_dish
        puts "The italian chef makes pizza"
    end

    def make_risotto
        puts "The italian chef makes risotto"
    end
end


chef = Chef.new()
chef.make_special_dish

italia_chef = ItalianChef.new()
italia_chef.make_special_dish
italia_chef.make_risotto
chef.make_special_dish