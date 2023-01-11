import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          const Text(
            "Friends",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          const Text(
            "This hit sitcm follows the merry misadventures of six\n20 - something pais as they navigate the pitfalls of work,\nlife and love in 1990s Manhattan",
            style: TextStyle(
              color: kGrey,
            ),
          ),
          kHeight50,
          const VideoWidget(),
          kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              CustomButtonWidget(
                icon: Icons.share,
                title: "Share",
                iconSize: 25,
                textSize: 16,
              ),
              kWidth,
              CustomButtonWidget(
                icon: Icons.add,
                title: "My List",
                iconSize: 25,
                textSize: 16,
              ),
              kWidth,
              CustomButtonWidget(
                icon: Icons.play_arrow,
                title: "Play",
                iconSize: 25,
                textSize: 16,
              ),
              kWidth
            ],
          )
        ],
      ),
    );
  }
}
