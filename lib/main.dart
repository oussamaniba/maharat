import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/core/routes/app_route.dart';

void main() async {
  await initConfigurations();
}

Future<void> initConfigurations() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjectable(Env.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = getIt<AppRoutes>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Maharat Tifl',
      themeAnimationCurve: Curves.easeIn,
      themeAnimationDuration: const Duration(milliseconds: 200),
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(),
      routeInformationProvider: _router.routeInfoProvider(),
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        scrollbars: false,
        overscroll: false,
      ),
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
    );
  }
}
