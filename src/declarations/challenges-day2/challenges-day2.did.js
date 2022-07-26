export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'bubble_sort' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Vec(IDL.Nat)], []),
    'capitalize_character' : IDL.Func([IDL.Nat32], [IDL.Nat32], []),
    'capitalize_text' : IDL.Func([IDL.Text], [IDL.Text], []),
    'day_of_the_week' : IDL.Func([IDL.Nat], [IDL.Opt(IDL.Text)], []),
    'decimal_to_bits' : IDL.Func([IDL.Nat], [IDL.Text], []),
    'duplicated_character' : IDL.Func([IDL.Text], [IDL.Text], []),
    'increase_by_index' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Vec(IDL.Nat)], []),
    'is_inside' : IDL.Func([IDL.Text, IDL.Nat32], [IDL.Bool], []),
    'max_number_with_n_bits' : IDL.Func([IDL.Nat], [IDL.Nat], []),
    'nat_opt_to_nat' : IDL.Func([IDL.Opt(IDL.Nat), IDL.Nat], [IDL.Nat], []),
    'nat_to_nat8' : IDL.Func([IDL.Nat], [IDL.Nat8], []),
    'populate_array' : IDL.Func(
        [IDL.Vec(IDL.Opt(IDL.Nat))],
        [IDL.Vec(IDL.Nat)],
        [],
      ),
    'size_in_bytes' : IDL.Func([IDL.Text], [IDL.Nat], []),
    'squared_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Vec(IDL.Nat)], []),
    'sum_of_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
    'trim_whitespace' : IDL.Func([IDL.Text], [IDL.Text], []),
  });
};
export const init = ({ IDL }) => { return []; };
