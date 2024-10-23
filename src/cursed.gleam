import argv
import cursed/aliases/aliases
import cursed/circular/wibble
import cursed/if_statements/if_statements
import gleam/io

pub fn main() {
  let args = argv.load().arguments
  case args {
    [] -> io.println("No arguments provided. Please see the README for usage.")
    ["circular"] -> wibble.wibble()
    ["aliases"] -> aliases.run()
    ["if"] -> io.println("Usage: if <password>")
    ["if", password] -> if_statements.run(password)
    _ -> io.println("Unknown module. Please see the README for usage.")
  }
}
