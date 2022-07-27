import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface Animal { 'specie' : string, 'energy' : bigint }
export interface _SERVICE {
  'create_animal_then_takes_a_break' : ActorMethod<[string, bigint], Animal>,
  'fun' : ActorMethod<[], string>,
}
