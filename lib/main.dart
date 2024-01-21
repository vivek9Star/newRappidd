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
  runApp(Rappid());
}




class Rappid extends StatefulWidget {
  const Rappid({super.key});

  @override
  State<Rappid> createState() => _RappidState();
}

class _RappidState extends State<Rappid> {
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
