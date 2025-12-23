import 'package:flutter/material.dart';
import 'package:music_app_ui/constant/colors.dart';
import 'package:music_app_ui/constant/dimensions.dart';
import 'package:music_app_ui/constant/paths.dart';
import 'package:music_app_ui/custom_widgets_design/custom_cirucalr_widget.dart';
import 'package:music_app_ui/custom_widgets_design/media_control_buttons.dart';

class MusicPage extends StatefulWidget {
  final String musicName;
  final String musicSinger;
  const MusicPage({
    super.key,
    required this.musicName,
    required this.musicSinger,
  });
  @override
  State<StatefulWidget> createState() {
    return MusicPageState();
  }
}

class MusicPageState extends State<MusicPage> {
  double value = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: MediaQuery.sizeOf(context).height * .1,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(Dimensions.raduis),
                  splashColor: Colors.transparent,
                  onTap: () => Navigator.pop(context),
                  child: CustomCirucalrWidget(
                    isOpen: false,
                    height: Dimensions.heightWidthIconInMusicPage,
                    radius: Dimensions.raduis,
                    width: Dimensions.heightWidthIconInMusicPage,
                    color: AppColors.primaryColor,
                    widget: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ),
                CustomCirucalrWidget(
                  isOpen: false,
                  height: Dimensions.heightWidthIconInMusicPage,
                  radius: Dimensions.raduis,
                  width: Dimensions.heightWidthIconInMusicPage,
                  color: AppColors.primaryColor,
                  widget: Icon(Icons.stop, color: AppColors.secondaryColor),
                ),
              ],
            ),
            SizedBox(height: 20),
            CustomCirucalrWidget(
              isOpen: false,
              height: Dimensions.heightWidthImageInMusicPage,
              radius: Dimensions.raduis,
              width: Dimensions.heightWidthImageInMusicPage,
              color: Colors.transparent,
              widget: ClipRRect(
                borderRadius: BorderRadius.circular(Dimensions.radiusClipRRect),
                child: Image.asset(Paths.imagePath, fit: BoxFit.contain),
              ),
            ),
            SizedBox(height: 20),
            Text(
              widget.musicName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.secondaryColor,
              ),
            ),
            Text(
              widget.musicSinger,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryColor,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1:47",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  Text(
                    "4:00",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  colors: [AppColors.specialColor, Colors.white],
                ).createShader(bounds);
              },
              child: Slider(
                value: value,
                max: 100,
                min: 0,
                onChanged: (newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
                activeColor: AppColors.specialColor,
              ),
            ),
            SizedBox(height: 120),
            Mediacontrolbuttons(),
          ],
        ),
      ),
    );
  }
}
