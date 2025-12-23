import 'package:flutter/material.dart';
import 'package:music_app_ui/constant/colors.dart';
import 'package:music_app_ui/constant/dimensions.dart';
import 'package:music_app_ui/constant/paths.dart';
import 'package:music_app_ui/custom_widgets_design/custom_cirucalr_widget.dart';
import 'package:music_app_ui/custom_widgets_design/custom_list_tile.dart';
import 'package:music_app_ui/custom_widgets_design/media_control_buttons.dart';
import 'package:music_app_ui/pages/music_page.dart';

class MusicListPage extends StatefulWidget {
  const MusicListPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MusicListPageState();
  }
}

class MusicListPageState extends State<MusicListPage> {
  @override
  Widget build(BuildContext context) {
    List music = [
      {"musicName": "Holix", "musicSinger": "Flume", "isOpen": false},
      {
        "musicName": "Never BE Like you",
        "musicSinger": "Flume × Kia",
        "isOpen": false,
      },
      {"musicName": "Unavaliable", "musicSinger": "Davido", "isOpen": true},
      {
        "musicName": "Numb & Getting Colder",
        "musicSinger": "Flume × Kucha",
        "isOpen": false,
      },
      {"musicName": "Say it", "musicSinger": "Flume", "isOpen": false},
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomCirucalrWidget(
                  isOpen: false,
                  height: Dimensions.heightWidthIcon,
                  radius: Dimensions.raduis,
                  width: Dimensions.heightWidthIcon,
                  color: AppColors.primaryColor,
                  widget: Icon(Icons.save, color: AppColors.secondaryColor),
                ),
                CustomCirucalrWidget(
                  isOpen: false,
                  height: Dimensions.heightWidthImage,
                  radius: Dimensions.raduis,
                  width: Dimensions.heightWidthImage,
                  color: Colors.transparent,
                  widget: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      Dimensions.radiusClipRRect,
                    ),
                    child: Image.asset(Paths.imagePath, fit: BoxFit.contain),
                  ),
                ),
                CustomCirucalrWidget(
                  isOpen: false,
                  height: Dimensions.heightWidthIcon,
                  radius: Dimensions.raduis,
                  width: Dimensions.heightWidthIcon,
                  color: AppColors.primaryColor,
                  widget: Icon(
                    Icons.more_horiz,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * .05),
            ...List.generate(music.length, (index) {
              return InkWell(
                hoverColor: Colors.grey,
                borderRadius: BorderRadius.circular(15),

                onTap: music[index]["isOpen"]
                    ? () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return MusicPage(
                                musicName: music[2]["musicName"],
                                musicSinger: music[2]["musicSinger"],
                              );
                            },
                          ),
                        );
                      }
                    : null,
                onHover: music[index]["isOpen"] ? (value) {} : null,
                child: CustomListTile(
                  musicName: music[index]["musicName"],
                  musicSinger: music[index]["musicSinger"],
                  isOpen: music[index]["isOpen"],
                ),
              );
            }),
            SizedBox(height: MediaQuery.sizeOf(context).height * .05),
            Mediacontrolbuttons(),
          ],
        ),
      ),
    );
  }
}
