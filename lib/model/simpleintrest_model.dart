class SimpleintrestModel {
  final double? principle;
  final double? rate;
  final double? time;
  SimpleintrestModel({
    required this.principle,
    required this.rate,
    required this.time,
  });
  double calculate() {
    return (principle! * rate! * time!) / 100;
  }
}
