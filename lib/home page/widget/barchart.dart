import 'package:bank_app/models/bar_data.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:fl_chart/fl_chart.dart';
import "package:flutter/material.dart";

import 'package:get/get.dart';

class BarChartWidget extends StatelessWidget {
  final List weeklySummary;
  const BarChartWidget({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData mybardata = BarData(
        Year1: weeklySummary[0],
        Year2: weeklySummary[1],
        Year3: weeklySummary[2],
        Year4: weeklySummary[3],
        Year5: weeklySummary[4],
        Year6: weeklySummary[5],
        Year7: weeklySummary[6],
        Year8: weeklySummary[7],
        Year9: weeklySummary[8]);
    mybardata.initializedData();
    return BarChart(BarChartData(
        maxY: 160000,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    interval: 20000,
                    getTitlesWidget: getLeftSideTiles)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true, getTitlesWidget: getBottomTiles))),
        barGroups: mybardata.bardata
            .map((data) => BarChartGroupData(x: data.x, barRods: [
                  BarChartRodData(
                      toY: data.y,
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 9, 253, 17),
                        Colors.grey
                      ]),
                      width: widthSize(16),
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                      backDrawRodData: BackgroundBarChartRodData(
                          color: Colors.grey, show: true, toY: 160000))
                ]))
            .toList()));
  }

  Widget getBottomTiles(double value, TitleMeta meta) {
    final style = TextStyle(
        color: Colors.black,
        fontSize: fontSize(10),
        fontWeight: FontWeight.w400);

    Widget text;
    switch (value.toInt()) {
      case 2022:
        text = Text("2022", style: style);
        break;
      case 2023:
        text = Text(
          "2023",
          style: style,
        );
        break;
      case 2024:
        text = Text(
          "2024",
          style: style,
        );
        break;
      case 2025:
        text = Text(
          "2025",
          style: style,
        );
        break;
      case 2026:
        text = Text(
          "2026",
          style: style,
        );
        break;
      case 2027:
        text = Text(
          "2027",
          style: style,
        );
        break;
      case 2028:
        text = Text(
          "2028",
          style: style,
        );
        break;
      case 2029:
        text = Text(
          "2029",
          style: style,
        );
        break;
      case 2030:
        text = Text(
          "2030",
          style: style,
        );
        break;
      default:
        text = Text(
          "",
          style: style,
        );
        break;
    }
    return SideTitleWidget(child: text, axisSide: meta.axisSide);
  }

  Widget getLeftSideTiles(double value, TitleMeta meta) {
    final style = TextStyle(
        color: Colors.black,
        fontSize: fontSize(8),
        fontWeight: FontWeight.w400);

    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text("0", style: style);
        break;
      case 20000:
        text = Text(
          "20k",
          style: style,
        );
        break;
      case 40000:
        text = Text(
          "40k",
          style: style,
        );
        break;
      case 60000:
        text = Text(
          "60k",
          style: style,
        );
        break;
      case 80000:
        text = Text(
          "80k",
          style: style,
        );
        break;
      case 100000:
        text = Text(
          "100k",
          style: style,
        );
        break;
      case 120000:
        text = Text(
          "120k",
          style: style,
        );
        break;
      case 140000:
        text = Text(
          "140k",
          style: style,
        );
        break;
      case 160000:
        text = Text(
          "160k",
          style: style,
        );
        break;
      default:
        text = Text(
          "",
          style: style,
        );
        break;
    }
    return SideTitleWidget(child: text, axisSide: meta.axisSide);
  }
}
