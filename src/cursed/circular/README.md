# Circular Imports

Turns out that, since both JavaScript and Erlang allow circular imports, you can bypass
the Gleam compiler's circular import restrictions using FFI.

Thanks [@joshi-monster](https://github.com/joshi-monster) for this exciting revelation!
