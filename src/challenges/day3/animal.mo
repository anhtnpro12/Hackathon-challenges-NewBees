
module {
    public type Animal = {
        specie : Text;
        energy : Nat;
    };

    public func animal_sleep(ani : Animal) : Animal {
        let temp : Animal = {
            specie = ani.specie;
            energy = ani.energy + 10;
        };
        return temp;
    };
};