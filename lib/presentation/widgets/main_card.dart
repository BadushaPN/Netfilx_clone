import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class MainCardTitle extends StatelessWidget {
  const MainCardTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
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
    );
  }
}
