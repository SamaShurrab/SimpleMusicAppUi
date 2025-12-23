import 'package:flutter/material.dart';
import 'package:music_app_ui/constant/colors.dart';
import 'package:music_app_ui/constant/dimensions.dart';
import 'package:music_app_ui/custom_widgets_design/custom_cirucalr_widget.dart';

class CustomListTile extends StatelessWidget {
  final String musicName;
  final String musicSinger;
  final bool isOpen;
  const CustomListTile({
    super.key,
    required this.musicName,
    required this.musicSinger,
    required this.isOpen,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        musicName,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: AppColors.secondaryColor,
        ),
      ),
      subtitle: Text(
        musicSinger,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.secondaryColor,
        ),
      ),
      trailing: isOpen
          ? CustomCirucalrWidget(
              isOpen: true,
              height: Dimensions.heightWidthIcon,
              width: Dimensions.heightWidthIcon,
              radius: Dimensions.raduis,
              color: AppColors.specialColor,
              widget: Icon(Icons.stop, color: AppColors.secondaryColor),
            )
          : CustomCirucalrWidget(
              isOpen: false,
              height: Dimensions.heightWidthIcon,
              width: Dimensions.heightWidthIcon,
              radius: Dimensions.raduis,
              color: AppColors.primaryColor,
              widget: Icon(Icons.play_arrow, color: AppColors.secondaryColor),
            ),
    );
  }
}
