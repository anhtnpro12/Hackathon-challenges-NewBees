import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'bubble_sort' : ActorMethod<[Array<bigint>], Array<bigint>>,
  'capitalize_character' : ActorMethod<[number], number>,
  'capitalize_text' : ActorMethod<[string], string>,
  'day_of_the_week' : ActorMethod<[bigint], [] | [string]>,
  'decimal_to_bits' : ActorMethod<[bigint], string>,
  'duplicated_character' : ActorMethod<[string], string>,
  'increase_by_index' : ActorMethod<[Array<bigint>], Array<bigint>>,
  'is_inside' : ActorMethod<[string, number], boolean>,
  'max_number_with_n_bits' : ActorMethod<[bigint], bigint>,
  'nat_opt_to_nat' : ActorMethod<[[] | [bigint], bigint], bigint>,
  'nat_to_nat8' : ActorMethod<[bigint], number>,
  'populate_array' : ActorMethod<[Array<[] | [bigint]>], Array<bigint>>,
  'size_in_bytes' : ActorMethod<[string], bigint>,
  'squared_array' : ActorMethod<[Array<bigint>], Array<bigint>>,
  'sum_of_array' : ActorMethod<[Array<bigint>], bigint>,
  'trim_whitespace' : ActorMethod<[string], string>,
}
