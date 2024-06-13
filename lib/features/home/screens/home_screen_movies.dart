import 'dart:ui';

import 'package:data_app/core/theme/colors.dart';
import 'package:data_app/core/widgets/sherd_widgets.dart';
import 'package:data_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeScreenMovies extends StatefulWidget {
  const HomeScreenMovies({super.key});

  @override
  State<HomeScreenMovies> createState() => _HomeScreenMoviesState();
}

class _HomeScreenMoviesState extends State<HomeScreenMovies> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: ColorsForAllApp.backGroundGradient,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.black
                  .withOpacity(0), // Transparent container to apply blur effect
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(children: [
                titelText(S.current.hometitle, ColorsForAllApp.font36blod),
                cardSwiper(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
