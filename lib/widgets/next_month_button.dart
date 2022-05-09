import 'package:flutter/material.dart';

class NextMonthButton extends StatelessWidget {
  const NextMonthButton({Key? key, required this.handlePress}) : super(key: key);

  final Function handlePress;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          handlePress();
        },
        icon: const Icon(Icons.arrow_forward_ios));
  }
}
