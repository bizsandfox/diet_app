import 'package:flutter/material.dart';

class PrevMonthButton extends StatelessWidget {
  const PrevMonthButton({Key? key, required this.handlePress}) : super(key: key);

  final Function handlePress;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          handlePress();
        },
        icon: const Icon(Icons.arrow_back_ios));
  }
}
