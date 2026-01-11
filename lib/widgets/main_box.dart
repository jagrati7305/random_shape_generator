import 'package:create_random_shape/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainBox extends StatefulWidget {
  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;
  const MainBox({
    super.key,
    this.topLeftRadius=0,
    this.topRightRadius=0,
    this.bottomLeftRadius=0,
    this.bottomRightRadius=0});

  @override
  State<MainBox> createState() => _MainBoxState();
}

class _MainBoxState extends State<MainBox> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 326,
      decoration: BoxDecoration(
        color: AppColors.mainBoxColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(widget.topLeftRadius),
          topRight: Radius.circular(widget.topRightRadius),
          bottomLeft: Radius.circular(widget.bottomLeftRadius),
          bottomRight: Radius.circular(widget.bottomRightRadius))
      ),
    );
  }
}