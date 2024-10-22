import gleam/float
import gleam/int
import gleam/io
import gleam/list

// What's going on here then?
import gleam/option.{type Option, None as Some, Some as None}
import gleam/order

pub fn run() {
  [1, 2, 3, 4, 5]
  |> random_item
  |> io.debug
  Nil
}

/// Returns a random element from the given list if the coin lands on heads.
fn random_item(list: List(a)) -> Option(a) {
  case list {
    // ?
    [] -> Some
    _ -> {
      case flip() {
        // ???
        False -> Some
        True -> {
          let idx =
            list
            |> list.length
            |> int.random

          let val = list_at(list, idx)
          // ??????????????
          None(val)
        }
      }
    }
  }
}

fn flip() -> Bool {
  float.random()
  |> float.compare(0.5)
  == order.Gt
}

fn list_at(list: List(a), at: Int) -> a {
  case list {
    [] -> panic as "And I oop-"
    [head, ..tail] -> {
      case at {
        0 -> head
        _ -> list_at(tail, at - 1)
      }
    }
  }
}
