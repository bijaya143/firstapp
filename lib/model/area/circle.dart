import 'package:firstapp/model/area/area.dart';

class Circle implements Area {
  final double? pie;
  final double radius;

  Circle({
    this.pie = 3.14,
    required this.radius
  });

  @override
  double calculateArea() {
    return pie! * radius * radius;
  }

}