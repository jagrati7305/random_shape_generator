import 'package:create_random_shape/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ResetButton({super.key,
  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 32,
          child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.only(left: 16,right: 16,),
            side: BorderSide(
              color: Colors.transparent,
            ),
            backgroundColor: Color.fromRGBO(113, 54, 0,0.2),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(4))
          ), 
          child: Text(
            'Reset Values',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.darkColor
            ),
          )),
        )
      ],);
  }
}