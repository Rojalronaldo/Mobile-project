class CircleModel {
  final double radius;
  static const double pi = 3.14;
  CircleModel({
    required this.radius,
  });
  double area() {
    return pi * radius * radius;
  }
}
