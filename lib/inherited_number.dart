import 'package:flutter/material.dart';

class InheritedNumber extends InheritedWidget {
  const InheritedNumber({
    required this.number,
    required Widget child,
    Key? key,
  }) : super(child: child, key: key);

  final int number;

  static InheritedNumber? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedNumber>();

  @override
  bool updateShouldNotify(covariant InheritedNumber old) =>
      this.number != old.number;
}