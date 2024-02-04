import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  const BaseStatelessWidget({super.key});

  @override
  Widget build(BuildContext context);
}

abstract class GetViewBasePage<T> extends GetView<T> {
  const GetViewBasePage({super.key});

  @override
  Widget build(BuildContext context);
}

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  @override
  Widget build(BuildContext context);
}
