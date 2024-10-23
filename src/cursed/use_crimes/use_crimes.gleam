import pprint

pub fn run() {
  anon_use()
  |> pprint.debug

  Nil
}

/// Having anonymous functions on the right hand side of `use` is pure evil
fn anon_use() {
  use n <- fn(func) { func(255) }
  n * 2
}
