import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBaseSocialButton extends StatelessWidget {
  final double size;
  final String assetImage;
  final void Function() onPressed;

  const AppBaseSocialButton({
    Key? key,
    this.size = 34,
    required this.onPressed,
    required this.assetImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onPressed,
      splashRadius: 25,
      padding: const EdgeInsets.all(8),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
      ),
      icon: SvgPicture.asset(
        assetImage,
        height: size,
      ),
    );
  }
}
