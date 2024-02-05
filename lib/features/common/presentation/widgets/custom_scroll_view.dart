import 'package:flutter/material.dart';

class AppCustomScrollView extends StatelessWidget {
  final Widget child;

  const AppCustomScrollView(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: child,
        ),
      ],
    );
  }
}
