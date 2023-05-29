import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? child;
  final String title;

  const BaseButton(
      {super.key, this.onPressed, this.child, required this.title});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child ??
          Text(
            title,
          ),
    );
  }
}
