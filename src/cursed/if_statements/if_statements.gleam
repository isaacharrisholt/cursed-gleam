import gleam/io
import gleam/string

pub fn run(password: String) {
  let is_long_enough = string.length(password) > 12

  let _ =
    is_long_enough
    && {
      // This will only print if the provided password is long enough
      io.println("Password is long enough")
      True
    }
    || {
      // This will only print if the provided password is not long enough
      io.println("Password is not long enough")
      False
    }

  Nil
}
