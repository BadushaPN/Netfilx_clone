import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.accents[index % Colors.accents.length],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.4),
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    size: 30,
                    color: kWhite,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wb8qxuibaQHEogQm2vlOaizoViU.jpg"),
                    ),
                  ),
                  VideoActionWidget(icon: Icons.emoji_emotions, title: "LOL"),
                  VideoActionWidget(icon: Icons.add, title: "My List"),
                  VideoActionWidget(icon: Icons.share, title: "Share"),
                  VideoActionWidget(icon: Icons.play_arrow, title: "Play"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(color: kWhite, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
