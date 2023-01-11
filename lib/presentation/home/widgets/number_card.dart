import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
                height: 150,
              ),
              Container(
                width: 120,
                // height: 100,
                decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wb8qxuibaQHEogQm2vlOaizoViU.jpg",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 10,
            bottom: -25,
            child: BorderedText(
              strokeWidth: 8.0,
              strokeColor: kWhite,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                    fontSize: 140,
                    color: kBlack,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
