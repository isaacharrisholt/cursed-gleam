pub fn run(input: Result(String, Nil)) {
  use <- match(case input {
    Ok("wibble") -> return("WIBBLE!")
    _ -> continue
  })

  // this is only executed if the input does not match Ok("wibble")

  "not wibble :("
}

fn match(x, f) {
  x(f)
}

fn return(x) {
  fn(_) { x }
}

fn continue(f) {
  f()
}
