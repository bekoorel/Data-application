import 'package:data_app/core/theme/colors.dart';
import 'package:data_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeScreenMovies extends StatelessWidget {
  const HomeScreenMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(children: [
          Text(
            S.current.hometitle,
            style: ColorsForAllApp.font36normal,
          ),
        ]),
      ),
    );
  }
}
