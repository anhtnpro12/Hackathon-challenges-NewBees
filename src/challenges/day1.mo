import Nat "mo:base/Nat";
import Array "mo:base/Array";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";

actor {
    public func add(n : Nat, m : Nat) : async Nat {
        return n + m; 
    };

    public func square(n : Nat) : async Nat {         
        return n * n; 
    };

    public func days_to_second(n : Nat) : async Nat {
        return n * 24 * 60 * 60; 
    };    

    var counter = 0;
    public func increment_counter(n : Nat) : async Nat {
        counter += n;
        return counter; 
    };
    public func clear_counter() : async () {
        counter := 0;
    };

    public func divide(n : Nat, m : Nat) : async Bool {
        if (m == 0) {
            return false;
        };
        return n % m == 0;
    };

    public func is_even(n : Nat) : async Bool {
        return n % 2 == 0;
    };

    public func sum_of_array(array : [Nat]) : async Nat {
        var sum = 0;
        for (x in array.vals()) {
            sum += x;
        };
        return sum;
    };

    public func maximum(array : [Nat]) : async Nat {
        var maxVal = 0;
        for (x in array.vals()) {
            maxVal := Nat.max(maxVal, x);
        };
        return maxVal;
    };

    public func remove_from_array(array : [Nat], n : Nat) : async [Nat] {
        return Array.filter(array, func(val : Nat) : Bool { 
            return val != n;
        });
    };

    public func selection_sort(array : [Nat]) : async [Nat] {        
        let size = array.size();
        var array_mu = Array.thaw<Nat>(array);

        for (i in Iter.range(0, size - 1)) {
            var idMin = i;
            for (j in Iter.range(i + 1, size - 1)) {
                if (array_mu[idMin] > array_mu[j]) {
                    idMin := j;
                };
            };
            let temp = array_mu[i];
            array_mu[i] := array_mu[idMin];
            array_mu[idMin] := temp;
        };             

        return Array.freeze<Nat>(array_mu);
    };
};