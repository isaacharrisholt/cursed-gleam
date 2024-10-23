import gleam/io
import gleam/string

pub fn run(input: String) {
  // Turns out you actually can pipe into a `case` statement as long as it evaluates to a
  // function that accepts what you piped into it.
  let name = "Billy"

  name
  |> case string.length(input) > 0 {
    True -> greet
    False -> complain
  }
}

fn complain(name) {
  io.println(name <> ": You didn't talk to me! 😭")
}

fn greet(name) {
  io.println(name <> " hates you")
}
