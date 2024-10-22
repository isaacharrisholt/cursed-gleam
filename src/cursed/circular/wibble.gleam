import gleam/io

@external(erlang, "cursed@circular@wobble", "wobble")
@external(javascript, "./wobble.mjs", "wobble")
fn call_wobble() -> Nil

pub fn wibble() {
  io.println("wibble")
  call_wobble()
}
