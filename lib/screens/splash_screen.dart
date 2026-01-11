import 'dart:async';

import 'package:create_random_shape/constants/app_colors.dart';
import 'package:create_random_shape/screens/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context)=>MainScreen()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [AppColors.mainBoxColor,AppColors.secondaryColor],begin: AlignmentGeometry.topCenter,end: AlignmentGeometry.bottomCenter)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let's Create",
                style: TextStyle(
                  color: AppColors.baseColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Random Shapes',
                style: TextStyle(
                  color: AppColors.baseColor,
                  fontSize: 36,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: AppColors.secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Made with',
                  style: TextStyle(
                    color: AppColors.baseColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.favorite,
                  color: AppColors.baseColor,
                  size: 14,
                )
              ],
            ),
            Text(
              'Jagrati',
              style: TextStyle(
                    color: AppColors.baseColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.75
                  ),
            )
          ],
        ),
      ),
    );
  }
}