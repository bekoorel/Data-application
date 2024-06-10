import 'package:data_app/core/router/pages_router.dart';
import 'package:data_app/core/theme/colors.dart';
import 'package:data_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: ColorsForAllApp.backGroundGradient),
      child: SafeArea(
        child: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final GoRouter router = GoRouter(routes: routes);
  @override
  Widget build(BuildContext context) {
    //initialLocation: isloggedIn ? '/mainscreen' : '/', routes: routes);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: const Locale('en'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routerConfig: router,
    );
  }
}
