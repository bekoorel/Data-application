import 'package:card_swiper/card_swiper.dart';
import 'package:data_app/core/network/repo/data_hold.dart';
import 'package:data_app/core/network/serveses/web_serves.dart';
import 'package:data_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

Widget titelText(String data, TextStyle style) {
  return Text(
    data,
    style: style,
  );
}

Widget cardSwiper() {
  DataProcessor dataMovie = DataProcessor();
  return SizedBox(
    height: 600.h,
    width: double.infinity.w,
    child: FutureBuilder<List<MovisApiModel>>(
      future: dataMovie.dataApi(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Swiper(
            onTap: (index) => context.go('/singelPage', extra: {
              'titel': '${snapshot.data![index].title}',
              'url': '${snapshot.data![index].posterURL}'
            }),
            layout: SwiperLayout.CUSTOM,
            customLayoutOption:
                CustomLayoutOption(startIndex: -1, stateCount: 3)
                  ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
                  ..addTranslate([
                    const Offset(-370.0, -40.0),
                    const Offset(0.0, 0.0),
                    const Offset(370.0, -40.0)
                  ]),
            itemWidth: 300.w,
            itemHeight: 700.h,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        errorBuilder: (context, error, stackTrace) => Card(
                          color: ColorsForAllApp.darkCyan,
                          child: Center(
                              child: Text(
                            'Not Found',
                            style: ColorsForAllApp.font20normal,
                          )),
                        ),
                        '${snapshot.data![index].posterURL}',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: 250.w,
                        child: Card(
                          color: ColorsForAllApp.darkCyan,
                          child: Center(
                              child: Text(
                            '${snapshot.data![index].title}',
                            style: ColorsForAllApp.font20normal,
                          )),
                        ),
                      )),
                ],
              );
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    ),
  );
}
