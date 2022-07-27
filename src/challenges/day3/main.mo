import Cus "custom";
import Ani "animal";

actor {
    public type Person = Cus.Person;
    public type Animal = Ani.Animal;        

    public func fun() : async Text {
        let temp : Person = {
            name = "Anh dep trai";
            age = 20;
        };        

        return temp.name;
    };
    
    public func create_animal_then_takes_a_break(spe : Text, ener : Nat) : async Animal {
        var temp : Animal = {
            specie = spe;
            energy = ener;
        };
        temp := Ani.animal_sleep(temp);
        return temp;        
    };

};