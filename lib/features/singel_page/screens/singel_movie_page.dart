import 'package:data_app/core/theme/colors.dart';
import 'package:data_app/core/widgets/sherd_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SingelMoviePage extends StatelessWidget {
  final Map<String, String> data;
  const SingelMoviePage(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsForAllApp.darkCyan,
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: ColorsForAllApp.white,
        ),
        onPressed: () => context.go('/'),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              data['url']!,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0.5),
                  Colors.black
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: titelText(
                data['titel']!,
                ColorsForAllApp.font36blod,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
