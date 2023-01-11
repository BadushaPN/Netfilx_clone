// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/searchIdleWidget.dart';
import 'package:netflix_clone/presentation/search/widgets/search_text_title.dart';

class SearchResulWidget extends StatelessWidget {
  const SearchResulWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: "Movies & TV"),
        kHeight,
        Expanded(
            child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 3,
          shrinkWrap: true,
          childAspectRatio: 1 / 1.4,
          children: List.generate(20, (index) {
            return MainCard();
          }),
        ))
      ],
    );
  }
}

// ignore: must_be_immutable
class MainCard extends StatelessWidget {
  MainCard({super.key});
  String iamgeUrl =
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/34m2tygAYBGqA9MXKhRDtzYd4MR.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.4,
      // height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
