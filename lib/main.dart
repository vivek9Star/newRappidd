import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rappid_poc/UI/commonScreen.dart';
import 'package:rappid_poc/UI/splashScreen/splashScreen.dart';
import 'package:rappid_poc/themeData/systemTheme.dart';






void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
  });

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent,
    // Color for Android
    // statusBarBrightness: Brightness.dark // Dark == white status bar -- for IOS.
  ));
  runApp(const MyApp());
}




class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: lightMode,
        darkTheme: darkMode,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: SplashScreen()
    );
  }
}
