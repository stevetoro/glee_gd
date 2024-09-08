pub type Pid

pub type Image =
  Pid

pub type Color =
  #(Float, Float, Float, Float)

pub type RGB =
  #(Int, Int, Int)

pub type Point =
  #(Int, Int)

@external(erlang, "egd", "arc")
pub fn arc(image: Image, p1: Point, p2: Point, color: Color) -> Nil

@external(erlang, "egd", "arc")
pub fn arcd(image: Image, p1: Point, p2: Point, d: Int, color: Color) -> Nil

@external(erlang, "egd", "color")
pub fn color(color: RGB) -> Color

@external(erlang, "egd", "create")
pub fn create(width: Int, height: Int) -> Image

@external(erlang, "egd", "destroy")
pub fn destroy(image: Image) -> Nil

@external(erlang, "egd", "filledEllipse")
pub fn filled_ellipse(image: Image, p1: Point, p2: Point, color: Color) -> Nil

@external(erlang, "egd", "filledRectangle")
pub fn filled_rectangle(image: Image, p1: Point, p2: Point, color: Color) -> Nil

@external(erlang, "egd", "filledTriangle")
pub fn filled_triangle(
  image: Image,
  p1: Point,
  p2: Point,
  p3: Point,
  color: Color,
) -> Nil

@external(erlang, "egd", "information")
pub fn information(image: Image) -> Nil

@external(erlang, "egd", "line")
pub fn line(image: Image, p1: Point, p2: Point, color: Color) -> Nil

@external(erlang, "egd", "polygon")
pub fn polygon(image: Image, points: List(Point), color: Color) -> Nil

@external(erlang, "egd", "rectangle")
pub fn rectangle(image: Image, p1: Point, p2: Point, color: Color) -> Nil

@external(erlang, "egd", "render")
pub fn render(image: Image) -> String
