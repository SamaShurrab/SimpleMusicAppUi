import 'package:flutter/material.dart';
import 'package:music_app_ui/constant/colors.dart';
import 'package:music_app_ui/constant/dimensions.dart';
import 'package:music_app_ui/custom_widgets_design/custom_cirucalr_widget.dart';

class Mediacontrolbuttons extends StatelessWidget {
  const Mediacontrolbuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomCirucalrWidget(
          height: Dimensions.heightWidthMusic,
          width: Dimensions.heightWidthMusic,
          radius: Dimensions.raduis,
          color: AppColors.primaryColor,
          widget: Icon(Icons.fast_rewind, color: AppColors.secondaryColor),
          isOpen: false,
        ),
        CustomCirucalrWidget(
          height: Dimensions.heightWidthMusic,
          width: Dimensions.heightWidthMusic,
          radius: Dimensions.raduis,
          color: AppColors.specialColor,
          widget: Icon(Icons.pause, color: Colors.white),
          isOpen: true,
        ),
        CustomCirucalrWidget(
          height: Dimensions.heightWidthMusic,
          width: Dimensions.heightWidthMusic,
          radius: Dimensions.raduis,
          color: AppColors.primaryColor,
          widget: Icon(Icons.fast_forward, color: AppColors.secondaryColor),
          isOpen: false,
        ),
      ],
    );
  }
}
