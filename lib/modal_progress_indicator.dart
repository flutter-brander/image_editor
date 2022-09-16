import 'package:flutter/material.dart';

class ModalProgressIndicator extends StatelessWidget {
  static const _defaultOpacity = 0.7;

  final Widget indicator;
  final Color backgroundColor;
  final double backgroundOpacity;

  const ModalProgressIndicator({
    Key? key,
    this.indicator = const CircularProgressIndicator(
      strokeWidth: 6.0,
      color: Color(0xFF01CC99),
    ),
    this.backgroundColor = Colors.black,
    this.backgroundOpacity = _defaultOpacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: backgroundOpacity,
          child: ModalBarrier(
            dismissible: false,
            color: backgroundColor,
          ),
        ),
        Center(
          child: SizedBox(
            width: 77.0,
            height: 77.0,
            child: indicator,
          ),
        ),
      ],
    );
  }
}
