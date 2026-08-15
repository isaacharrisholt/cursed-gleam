import gleam/int
import gleam/io

const super_hidden_number = 100

type Else {
  Else
}

pub fn run(arg: String) {
  case int.parse(arg) {
    Ok(guess) -> check_answer(guess)
    _ -> io.println("failed to parse (" <> arg <> ") as a number")
  }
}

fn check_answer(guess) {
  // compiler warns on literal values in case expressions
  let else_ = Else

  case else_ {
    _ if super_hidden_number > guess -> {
      io.println("too low")
    }
    Else if super_hidden_number < guess -> {
      io.println("too high")
    }
    Else -> {
      io.println("just right")
    }
  }
}
