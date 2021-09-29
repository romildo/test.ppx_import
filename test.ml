type loc = [%import: Lexing.position] [@@deriving show]

let a:loc = Lexing.dummy_pos

let _ = print_endline (show_loc a)
