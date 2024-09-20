import glee_gd/egd.{type Color, type Image, type Point, type RGB}

pub fn arc(image: Image, p1: Point, p2: Point, color: Color) {
  egd.arc(image, p1, p2, color)
  image
}

pub fn arcd(image: Image, p1: Point, p2: Point, d: Int, color: Color) {
  egd.arcd(image, p1, p2, d, color)
  image
}

pub fn color(color: RGB) {
  egd.color(color)
}

pub fn create(width: Int, height: Int) {
  egd.create(width, height)
}

pub fn destroy(image: Image) {
  egd.destroy(image)
}

pub fn filled_ellipse(image: Image, p1: Point, p2: Point, color: Color) {
  egd.filled_ellipse(image, p1, p2, color)
  image
}

pub fn filled_rectangle(image: Image, p1: Point, p2: Point, color: Color) {
  egd.filled_rectangle(image, p1, p2, color)
  image
}

pub fn filled_triangle(
  image: Image,
  p1: Point,
  p2: Point,
  p3: Point,
  color: Color,
) {
  egd.filled_triangle(image, p1, p2, p3, color)
  image
}

pub fn information(image: Image) {
  egd.information(image)
  image
}

pub fn line(image: Image, p1: Point, p2: Point, color: Color) {
  egd.line(image, p1, p2, color)
  image
}

pub fn polygon(image: Image, points: List(Point), color: Color) {
  egd.polygon(image, points, color)
  image
}

pub fn rectangle(image: Image, p1: Point, p2: Point, color: Color) {
  egd.rectangle(image, p1, p2, color)
  image
}

pub fn render(image: Image) -> String {
  egd.render(image)
}
