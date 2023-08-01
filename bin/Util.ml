exception Unimplemented

open Base

let random_string ?(n = 12) () =
  let random_char () =
    Option.value ~default:'x' (Char.of_int (97 + Random.int 26))
  in
  String.of_char_list
    (Sequence.fold (Sequence.range 0 n) ~init:[] ~f:(fun xs _ ->
         random_char () :: xs))
