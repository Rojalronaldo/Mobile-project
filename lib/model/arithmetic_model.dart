//POJO =>plain old java object
class ArthemeticModel {
  final int first;
  final int second;
  ArthemeticModel({
    required this.first,
    required this.second,
  });
  int Add() {
    return first + second;
  }


}
