import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Debug "mo:base/Debug";
import Char "mo:base/Char";
import Text "mo:base/Text";
import H "mo:base/HashMap";
import Iter "mo:base/Iter";

actor {
    public func nat_to_nat8(n : Nat) : async Nat8 {
        if (n >= 256) {
            return 0;
        };
        return Nat8.fromNat(n);
    };  
    
    public func max_number_with_n_bits(n : Nat) : async Nat {
        return 2**n - 1;
    };  

    public func decimal_to_bits(n : Nat) : async Text {
        var result : Text = "";
        var temp : Nat = n;

        while (temp != 0) {
            result := Nat.toText(temp % 2) # result;
            temp  /= 2; 
        };

        return result;
    };    

    public func capitalize_character(c : Char) : async Char {
        var n : Nat32 = Char.toNat32(c);
        if (n < Char.toNat32('a') or n > Char.toNat32('z')) {
            return c;
        };
        var char : Char = Char.fromNat32(n - 32);
        return char;
    };     

    public func capitalize_text(t : Text) : async Text {
        var result : Text = "";
        for (c in t.chars()) {
            if (Char.isLowercase(c)) {
                result #= Char.toText(Char.fromNat32(Char.toNat32(c) - 32));
            } else {
                result #= Char.toText(c);
            };
        };             

        return result;
    };

    public func is_inside(t : Text, c : Char) : async Bool {
        return Text.contains(t, #char c);
    };

    public func trim_whitespace(t : Text) : async Text {
        return Text.trim(t, #char ' '); 
    };

    public func duplicated_character(t : Text) : async Text {
        let map = H.HashMap<Text, Nat>(3, Text.equal, Text.hash);
        
        for (c in t.chars()) {
            let temp = Char.toText(c);
            if (map.get(temp) != null) {
                return temp;
            };
            map.put(temp, 1);
        };

        return t;
    };

    public func size_in_bytes(t : Text) : async Nat {
        return Text.encodeUtf8(t).size(); 
    };
};