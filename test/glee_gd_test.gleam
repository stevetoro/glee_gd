import gleam/bit_array
import glee_gd
import gleeunit
import gleeunit/should
import simplifile

pub fn main() {
  gleeunit.main()
}

pub fn render_ellipse_test() {
  let image = glee_gd.create(500, 500)
  let color = glee_gd.color(#(109, 74, 126))
  glee_gd.filled_ellipse(image, #(100, 400), #(400, 100), color)
  glee_gd.render(image)
  |> should_be_fixture("elixir-ellipse")
}

pub fn render_rectangle_test() {
  let image = glee_gd.create(500, 500)
  let color = glee_gd.color(#(0, 172, 216))
  glee_gd.filled_rectangle(image, #(100, 400), #(400, 100), color)
  glee_gd.render(image)
  |> should_be_fixture("go-rectangle")
}

pub fn render_triangle_test() {
  let image = glee_gd.create(500, 500)
  let color = glee_gd.color(#(255, 175, 243))
  glee_gd.filled_triangle(image, #(250, 125), #(100, 375), #(400, 375), color)
  glee_gd.render(image)
  |> should_be_fixture("gleam-triangle")
}

fn should_be_fixture(binary: String, file: String) {
  let binary_b64 =
    bit_array.from_string(binary)
    |> bit_array.base64_encode(False)

  let file_b64 =
    simplifile.read_bits("test/fixtures/" <> file <> ".png")
    |> should.be_ok
    |> bit_array.base64_encode(False)

  binary_b64 |> should.equal(file_b64)
}
