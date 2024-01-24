import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rappid_poc/UI/commonScreen.dart';
import 'package:rappid_poc/UI/splashScreen/splashScreen.dart';
import 'package:rappid_poc/themeData/systemTheme.dart';
import 'package:package_info_plus/package_info_plus.dart';






void main() async{
  WidgetsFlutterBinding.ensureInitialized();



  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  String appName = packageInfo.appName;
  String packageName = packageInfo.packageName;
  String version = packageInfo.version;
  String buildNumber = packageInfo.buildNumber;
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
  });

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent,
    // Color for Android
    // statusBarBrightness: Brightness.dark // Dark == white status bar -- for IOS.
  ));
  runApp( MyApp());
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
