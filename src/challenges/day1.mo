import Nat "mo:base/Nat";
import Array "mo:base/Array";

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
        
        
    };
};