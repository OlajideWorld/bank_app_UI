import 'package:bank_app/models/barchartmodel.dart';

class BarData {
  final double Year1;
  final double Year2;
  final double Year3;
  final double Year4;
  final double Year5;
  final double Year6;
  final double Year7;
  final double Year8;
  final double Year9;

  BarData({
    required this.Year1,
    required this.Year2,
    required this.Year3,
    required this.Year4,
    required this.Year5,
    required this.Year6,
    required this.Year7,
    required this.Year8,
    required this.Year9,
  });

  List<IndividualBar> bardata = [];

  void initializedData() {
    bardata = [
      IndividualBar(x: 2022, y: Year1),
      IndividualBar(x: 2023, y: Year2),
      IndividualBar(x: 2024, y: Year3),
      IndividualBar(x: 2025, y: Year4),
      IndividualBar(x: 2026, y: Year5),
      IndividualBar(x: 2027, y: Year6),
      IndividualBar(x: 2028, y: Year7),
      IndividualBar(x: 2029, y: Year8),
      IndividualBar(x: 2030, y: Year9)
    ];
  }
}
