import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/themes/themes.dart';
import 'core/utils/utils.dart';
import 'presentation/screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      setMediaQueryData(context);
      final textScaler = mediaQueryData.textScaler.clamp(
        minScaleFactor: 1.0,
        maxScaleFactor: 1.2,
      );

      return MediaQuery(
        data: mediaQueryData.copyWith(
          textScaler: textScaler,
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Accessibility',
          theme: LightTheme.lightTheme,
          home: const HomeScreen(),
        ),
      );
    });
  }
}
