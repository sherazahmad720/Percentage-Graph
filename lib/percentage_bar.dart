library percentage_graph;

import 'package:flutter/material.dart';
import 'package:percentage_bar/percent_graph_model.dart';

class PercentageGraph extends StatelessWidget {
  /// Creates a widget that shows a percentage of colors in a row , Each color shows a percentage of the total
  const PercentageGraph({
    Key? key,
    required this.dataList,
    this.height = 20,
    this.radius = 6,
  }) : super(key: key);

  /// dataList is a list of PercentGraphModel that represent the percentage of each color
  final List<PercentGraphModel> dataList;

  /// height is the height of the widget , default is 20
  final double height;

  /// radius is the radius of the widget , default is 6
  final double radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          color: Colors.grey,
          child: Row(children: [
            for (int i = 0; i < dataList.length; i++)
              Expanded(
                  flex: dataList[i].percent.round(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _getColor(i),
                    ),
                  )),
          ]),
        ),
      ),
    );
  }

  Color? _getColor(int index) {
    if (index > dataList.length - 1) {
      return Colors.grey;
    } else {
      return dataList[index].color;
    }
  }
}
