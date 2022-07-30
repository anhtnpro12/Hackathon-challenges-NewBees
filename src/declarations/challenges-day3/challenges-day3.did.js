export const idlFactory = ({ IDL }) => {
  const Animal = IDL.Record({ 'specie' : IDL.Text, 'energy' : IDL.Nat });
  return IDL.Service({
    'create_animal_then_takes_a_break' : IDL.Func(
        [IDL.Text, IDL.Nat],
        [Animal],
        [],
      ),
    'fun' : IDL.Func([], [IDL.Text], []),
  });
};
export const init = ({ IDL }) => { return []; };
