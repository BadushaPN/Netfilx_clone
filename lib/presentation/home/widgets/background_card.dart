import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          // color: Colors.amber,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(kMainImage), fit: BoxFit.cover)),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(icon: Icons.add, title: "My List"),
                _playButton(),
                const CustomButtonWidget(icon: Icons.info, title: "Info")
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhite)),
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          size: 25,
          color: kBlack,
        ),
        label: const Text(
          "Play",
          style: TextStyle(fontSize: 20, color: kBlack),
        ));
  }
}
