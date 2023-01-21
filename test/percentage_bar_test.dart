import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:percentage_bar/percent_graph_model.dart';

import 'package:percentage_bar/percentage_bar.dart';

void main() {
  test('simple test', () {
    final percentageGraph = PercentageGraph(
      dataList: [
        PercentGraphModel(10, Colors.red),
        PercentGraphModel(20, Colors.green),
        PercentGraphModel(30, Colors.blue),
        PercentGraphModel(40, Colors.yellow),
      ],
    );
    expect(percentageGraph, isNotNull);
    expect(percentageGraph.dataList.length, 4);
  });
}
