open Js_of_ocaml

let rec spin n =
  if n = 0 then 0 else n + spin (n-1)


let say_hi str =
  let v = spin 1000 in
  let n = spin 1001 in
  let v = n + v in
  print_endline ("Hi " ^ Js.to_string str ^ "! Spun: " ^ string_of_int v)

let () = Js.export "say_hi" say_hi
