import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PercentIndicator extends StatelessWidget {
  /// PercentIndicator is a widget that shows a percentage of colors
  PercentIndicator({Key? key, required this.percent, required this.colors})
      : super(key: key);

  /// percent is a list of integers that represent the percentage of each color
  List<int> percent;

  /// colors is a list of colors that represent the color of each percentage
  List<Color> colors;
  _getColor(int index) {
    if (index > colors.length - 1)
      return Colors.grey;
    else
      return colors[index];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Row(children: [
          for (int i = 0; i < percent.length; i++)
            Expanded(
                flex: percent[i],
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(),
                    color: _getColor(i),
                  ),
                )),
        ]),
      ),
    );
  }
}
