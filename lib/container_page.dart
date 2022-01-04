import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget child;
  final VoidCallback onBas;

  const MyContainer({
    Key? key,
    this.renk = Colors.white,
    required this.child,
    required this.onBas,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBas,
      child: Container(
        child: child,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: renk,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
