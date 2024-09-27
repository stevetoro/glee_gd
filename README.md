# glee_gd

[![Package Version](https://img.shields.io/hexpm/v/glee_gd)](https://hex.pm/packages/glee_gd)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/glee_gd/)

Gleam bindings for the [Erlang Graphical Drawer (EGD)](https://github.com/erlang/egd) library.

```sh
gleam add glee_gd
```
```gleam
import glee_gd as egd

pub fn main() {
  let color = egd.color(#(109, 74, 126))
  let image =
    egd.create(500, 500)
    |> egd.filled_ellipse(image, #(100, 400), #(400, 100), color)

  // Render the image to get a binary that can be written to a file.
  let binary = image |> egd.render

  // Destroy the image when you're done using it.
  image |> egd.destroy
}
```

Further documentation can be found at <https://hexdocs.pm/glee_gd>.

## Development

```sh
gleam test  # Run the tests
```
