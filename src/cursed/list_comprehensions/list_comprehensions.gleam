import gleam/list
import pprint

pub fn run() {
  let pairs = [
    #("zorua", "dark"),
    #("zoroark", "dark"),
    #("riolu", "fighting"),
    #("lucario", "fighting/steel"),
    #("chimchar", ""),
    #("monferno", "fire/fighting"),
    #("infernape", ""),
  ]

  pairs
  |> use_list_comprehension
  |> pprint.debug

  Nil
}

/// A list comprehension using "use"
fn use_list_comprehension(pairs) {
  [
    "Pokemon",
    ..{
      use #(x, y) <- list.map(pairs)
      case y {
        "" -> x
        _ -> x <> ":" <> y
      }
    }
  ]
}
