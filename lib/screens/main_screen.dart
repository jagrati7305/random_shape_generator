import 'dart:math';

import 'package:create_random_shape/constants/app_colors.dart';
import 'package:create_random_shape/widgets/app_button.dart';
import 'package:create_random_shape/widgets/app_textfield.dart';
import 'package:create_random_shape/widgets/main_box.dart';
import 'package:create_random_shape/widgets/reset_button.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController topLeftTextEditingController = TextEditingController();
  TextEditingController topRightTextEditingController = TextEditingController();
  TextEditingController bottomRightTextEditingController = TextEditingController();
  TextEditingController bottomLeftTextEditingController = TextEditingController();

  double tl = 0;
  double tr = 0;
  double bl = 0;
  double br = 0;

  void onTap(){
    setState(() {
      if(topLeftTextEditingController.text.isEmpty!=true){
        tl = double.parse(topLeftTextEditingController.text);
      }else{
        tl =0;
      }

      if(topRightTextEditingController.text.isEmpty!=true){
        tr = double.parse(topRightTextEditingController.text);
      }else{
        tr =0;
      }      
      
      if(bottomLeftTextEditingController.text.isEmpty!=true){
        bl = double.parse(bottomLeftTextEditingController.text);
      }else{
        bl =0;
      }      
      
      if(bottomRightTextEditingController.text.isEmpty!=true){
        br = double.parse(bottomRightTextEditingController.text);
      }else{
        br =0;
      }      
    });
  }

  void randomGenerate(){
    setState(() {
      tl = 0+Random().nextDouble()*400;
      tr = 0+Random().nextDouble()*400;
      bl = 0+Random().nextDouble()*400;
      br = 0+Random().nextDouble()*400;

      topLeftTextEditingController.text=tl.toStringAsFixed(0);
      topRightTextEditingController.text=tr.toStringAsFixed(0);
      bottomLeftTextEditingController.text=bl.toStringAsFixed(0);
      bottomRightTextEditingController.text=br.toStringAsFixed(0);
    });
  }

  void resetValue(){
    setState(() {
      topLeftTextEditingController.text='';
      topRightTextEditingController.text='';
      bottomLeftTextEditingController.text='';
      bottomRightTextEditingController.text='';         

      tl=0;
      tr=0;
      bl=0;
      br=0;
    });   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.secondaryColor,
        elevation: 0,
        title: Text(
          'Border Radius',
          style: TextStyle(
            color: AppColors.baseColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        
        child: LayoutBuilder(
          builder: (context,constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 32,right: 32),
                  decoration: BoxDecoration(
                    color: AppColors.baseColor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AppTextfield(titleString: 'Top Left Radius :',textEditingController: topLeftTextEditingController,),
                          AppTextfield(titleString: 'Top Right Radius :',textEditingController: topRightTextEditingController,)
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AppTextfield(titleString: 'Bottom Left Radius :',textEditingController: bottomLeftTextEditingController,),
                          AppTextfield(titleString: 'Bottom Right Radius :',textEditingController: bottomRightTextEditingController,)
                        ],
                      ),
                      ResetButton(onPressed: resetValue,),
                      SizedBox(
                        height: 8,
                      ),
                      AppButton(callbackFunction: onTap,buttonLabel: 'Generate Shape',),
                      SizedBox(
                        height: 16,
                      ),
                      
                      MainBox(topLeftRadius: tl,
                              topRightRadius: tr,
                              bottomLeftRadius: bl,
                              bottomRightRadius: br,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      AppButton(callbackFunction: randomGenerate,buttonLabel: 'Generate Random Shape',),
                    ],
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}