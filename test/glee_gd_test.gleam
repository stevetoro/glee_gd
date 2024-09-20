import gleam/bit_array
import glee_gd as egd
import gleeunit
import gleeunit/should
import simplifile

pub fn main() {
  gleeunit.main()
}

pub fn render_ellipse_test() {
  let color = egd.color(#(109, 74, 126))
  egd.create(500, 500)
  |> egd.filled_ellipse(#(100, 400), #(400, 100), color)
  |> egd.render
  |> should_be_fixture("elixir-ellipse")
}

pub fn render_rectangle_test() {
  let color = egd.color(#(0, 172, 216))
  egd.create(500, 500)
  |> egd.filled_rectangle(#(100, 400), #(400, 100), color)
  |> egd.render
  |> should_be_fixture("go-rectangle")
}

pub fn render_triangle_test() {
  let color = egd.color(#(255, 175, 243))
  egd.create(500, 500)
  |> egd.filled_triangle(#(250, 125), #(100, 375), #(400, 375), color)
  |> egd.render
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
