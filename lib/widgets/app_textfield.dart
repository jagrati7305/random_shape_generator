import 'package:create_random_shape/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextfield extends StatefulWidget {
  final String titleString;
  final TextEditingController textEditingController;
  const AppTextfield({
    super.key,
    required this.titleString,
    required this.textEditingController});

  @override
  State<AppTextfield> createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.titleString,
          style: TextStyle(
            color: AppColors.darkColor,
            fontSize: 13,
            fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(
          height: 4,
        ),
        SizedBox(
          width: 150,
          height: 67,
          child: TextField(
            keyboardType: TextInputType.number,
                controller: widget.textEditingController,
                style: TextStyle(
                  color: AppColors.secondaryColor
                ),
                decoration: InputDecoration(
                  hintText: '0',
                  hintStyle: TextStyle(
                    color: AppColors.secondaryColor
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      color: AppColors.secondaryColor
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      color: AppColors.secondaryColor
                    )
                  ),
                ),
              ),
        ),
      ],
    );
  }
}