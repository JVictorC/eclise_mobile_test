import 'package:flutter/material.dart';

class StructureBase extends StatelessWidget {
  const StructureBase({
    super.key,
    required this.child,
    this.appBar,
    this.floatingActionButton,
    this.backgroundColor,
  });

  final Widget child;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primary,
      floatingActionButton: floatingActionButton,
      appBar: appBar,
      body: SafeArea(
        bottom: true,
        child: child
      ),
    );
  }
}
