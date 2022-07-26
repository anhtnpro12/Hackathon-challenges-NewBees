import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'capitalize_character' : ActorMethod<[number], number>,
  'capitalize_text' : ActorMethod<[string], string>,
  'decimal_to_bits' : ActorMethod<[bigint], string>,
  'duplicated_character' : ActorMethod<[string], string>,
  'is_inside' : ActorMethod<[string, number], boolean>,
  'max_number_with_n_bits' : ActorMethod<[bigint], bigint>,
  'nat_to_nat8' : ActorMethod<[bigint], number>,
  'size_in_bytes' : ActorMethod<[string], Array<number>>,
  'trim_whitespace' : ActorMethod<[string], string>,
}
