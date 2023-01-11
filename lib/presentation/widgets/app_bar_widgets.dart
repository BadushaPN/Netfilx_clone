import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
        ),
        kWidth,
        Container(
          width: 25,
          height: 25,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/736x/c4/88/34/c488340ad56e5454f4576f6c708b63aa.jpg"))),
        ),
        kWidth
      ],
    );
  }
}
