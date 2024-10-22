import gleam/io

@external(erlang, "cursed@circular@wibble", "wibble")
@external(javascript, "./wibble.mjs", "wibble")
fn call_wibble() -> Nil

pub fn wobble() {
  io.println("wobble")
  call_wibble()
}
