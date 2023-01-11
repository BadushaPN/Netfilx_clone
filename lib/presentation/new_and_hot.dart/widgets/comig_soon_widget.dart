import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';

import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        kHeight,
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 450,
              child: Column(
                children: const [
                  Text(
                    "FEB",
                    style: TextStyle(
                      fontSize: 16,
                      color: kGrey,
                    ),
                  ),
                  Text(
                    "11",
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width - 50,
              height: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const VideoWidget(),
                  kHeight,
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "TALL GIRL 2",
                        style: TextStyle(
                          fontSize: 35,
                          // letterSpacing: -30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          CustomButtonWidget(
                            icon: Icons.alarm_add_sharp,
                            title: "Remind me",
                            iconSize: 20,
                            textSize: 12,
                          ),
                          kWidth,
                          CustomButtonWidget(
                            icon: Icons.info,
                            title: "info",
                            iconSize: 20,
                            textSize: 12,
                          ),
                          kWidth
                        ],
                      ),
                    ],
                  ),
                  const Text("Coming on Friday"),
                  kHeight,
                  const Text(
                    "Tall Girl 2",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeight,
                  const Text(
                    "Landing the lead in the school musical is a\ndream comr true for jodi,until the pressure\nsends her confidence-and her relationship-\ninto a tallspin",
                    style: TextStyle(
                      color: kGrey,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
