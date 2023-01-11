import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widgets.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:netflix_clone/presentation/main_page/widgets/bottom_nav.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});
  final _widgetList = const [
    _SmartDownloads(),
    Section2(),
    Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(15),
            itemBuilder: (ctx, index) => _widgetList[index],
            separatorBuilder: (ctx, index) => const SizedBox(height: 40),
            itemCount: _widgetList.length));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kWhite,
        ),
        kWidth,
        Text("Smart Downloads"),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    List image = [
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/34m2tygAYBGqA9MXKhRDtzYd4MR.jpg",
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/g8sclIV4gj1TZqUpnL82hKOTK3B.jpg",
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wb8qxuibaQHEogQm2vlOaizoViU.jpg"
    ];
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhite,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          textAlign: TextAlign.center,
          "We will Download a personalised selection of \nmovies and shows for you, so there's \nalways something ti watch on your \ndevice",
          style: TextStyle(
            color: Color.fromARGB(192, 158, 158, 158),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: size.width * 0.38,
              ),
              DownloadsImageWidgets(
                  size: Size(size.width * 0.35, size.width * 0.55),
                  image: image[1],
                  angle: -20 * pi / 180,
                  margin: const EdgeInsets.only(right: 160, bottom: 20)),
              DownloadsImageWidgets(
                  size: Size(size.width * 0.35, size.width * 0.55),
                  image: image[2],
                  angle: 20 * pi / 180,
                  margin: const EdgeInsets.only(left: 160, bottom: 20)),
              DownloadsImageWidgets(
                  size: Size(size.width * 0.4, size.width * 0.6),
                  image: image[0],
                  margin: const EdgeInsets.only(bottom: 0)),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: kButtonColor,
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Setup",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: kWhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                color: kBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DownloadsImageWidgets extends StatelessWidget {
  DownloadsImageWidgets(
      {super.key,
      required this.size,
      required this.image,
      this.angle = 0,
      required this.margin});
  EdgeInsets margin;
  final double angle;
  final Size size;
  final String image;
  // final double size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
