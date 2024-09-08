# glee_gd

[![Package Version](https://img.shields.io/hexpm/v/glee_gd)](https://hex.pm/packages/glee_gd)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/glee_gd/)

Gleam bindings for the [Erlang Graphical Drawer (EGD)](https://github.com/erlang/egd) library.

```sh
gleam add glee_gd
```
```gleam
import glee_gd

pub fn main() {
  let image = glee_gd.create(500, 500)
  let color = glee_gd.color(#(109, 74, 126))
  glee_gd.filled_ellipse(image, #(100, 400), #(400, 100), color)
  let binary = glee_gd.render(image)
  // Do something with binary in memory or write it to a file.
}
```

Further documentation can be found at <https://hexdocs.pm/glee_gd>.

## Development

```sh
gleam test  # Run the tests
```
