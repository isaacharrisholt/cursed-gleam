import argv
import cursed/aliases/aliases
import cursed/case_piping/case_piping
import cursed/circular/wibble
import cursed/if_let/if_let
import cursed/if_statements/if_statements
import cursed/list_comprehensions/list_comprehensions
import cursed/use_crimes/use_crimes
import gleam/io

pub fn main() {
  let args = argv.load().arguments
  case args {
    [] -> io.println("No arguments provided. Please see the README for usage.")
    ["circular"] -> wibble.wibble()
    ["aliases"] -> aliases.run()
    ["if"] -> io.println("Usage: if <password>")
    ["if", password] -> if_statements.run(password)
    ["if_let"] -> io.println("Usage: if_let <wibble>")
    ["if_let", input] -> io.println(if_let.run(Ok(input)))
    ["list_comprehensions"] -> list_comprehensions.run()
    ["use"] -> use_crimes.run()
    ["case_piping"] -> case_piping.run("")
    ["case_piping", message] -> case_piping.run(message)
    _ -> io.println("Unknown module. Please see the README for usage.")
  }
}
