import 'package:flutter/material.dart';

class CustomCirucalrWidget extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  final Widget widget;
  final Color color;
  final bool isOpen;
  const CustomCirucalrWidget({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
    required this.color,
    required this.widget,
    required this.isOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: isOpen
            ? null
            : [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 10,
                  offset: Offset(-4, -10),
                ),
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(4, 10),
                ),
              ],
      ),
      child: widget,
    );
  }
}
