import 'package:create_random_shape/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback callbackFunction;
  const AppButton({super.key,
  required this.callbackFunction,
  required this.buttonLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 48,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [AppColors.darkColor,Color.fromRGBO(113, 54, 0, 0.9)]),
        borderRadius: BorderRadiusGeometry.all(Radius.circular(4))
      ),
      child: ElevatedButton(
        onPressed: callbackFunction, 
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent
        ),
        child: Text(
          buttonLabel,
          style: TextStyle(
            color: AppColors.baseColor,
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
        )),
    );
  }
}