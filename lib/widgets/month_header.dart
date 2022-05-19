import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonthHeader extends StatelessWidget {
  const MonthHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<int, String> names = {
      DateTime.sunday: "일",
      DateTime.monday: "월",
      DateTime.tuesday: "화",
      DateTime.wednesday: "수",
      DateTime.thursday: "목",
      DateTime.friday: "금",
      DateTime.saturday: "토",
    };
    var _fontSize = const TextStyle(fontSize: 18);

    List<Widget> widgets = [];

    names.forEach((key, value) {
      widgets.add(Center(
          child: Text(value,
              style: key == 7 ? _fontSize.merge(const TextStyle(color: Colors.red)) : _fontSize)));
    });

    return Row(children: widgets, mainAxisAlignment: MainAxisAlignment.spaceAround);
  }
}
