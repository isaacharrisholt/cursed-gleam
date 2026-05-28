import gleam/string
import pprint

pub fn run() {
  anon_use()
  |> pprint.debug

  greeting()
  |> pprint.debug

  Nil
}

/// Having anonymous functions on the right hand side of `use` is pure evil
fn anon_use() {
  use n <- fn(func) { func(255) }
  n * 2
}

/// Reverse the order of function application with `use`
fn unpipe(f: fn(a) -> b, g: fn() -> a) -> b {
  f(g())
}

fn greeting() -> String {
  use <- unpipe(string.capitalise)
  use <- unpipe(string.reverse)
  "!dlrow ,olleh"
}
