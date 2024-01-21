import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rappid_poc/jsonController/jsonData.dart';
import 'package:rappid_poc/widgets/build_widget.dart';
import 'package:get/get.dart';


class CommonApiScreen extends StatefulWidget {
  const CommonApiScreen({super.key});

  @override
  State<CommonApiScreen> createState() => _CommonApiScreenState();
}

class _CommonApiScreenState extends State<CommonApiScreen> {
  Map<String, dynamic>? uiConfig = {};
  JsonController jsonController = JsonController();

  var jsonString;


  @override
  void initState() {
    super.initState();
    jsonString = Get.arguments;

    final parsedJson  = json.decode(jsonString);
    print(parsedJson);
    uiConfig = parsedJson;
    print(uiConfig);
    setState(() {

    });
  }

  // apiCall() async {
  //   await SignInData();
  //   uiConfig = await jsonController.loadSignInScreenUI();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    // Parse the JSON and build the UI accordingly
    if(uiConfig != null){
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
          backgroundColor: Color(int.parse(uiConfig!["backgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
          body: BuildWidget(uiConfig!["body"]),
        );
      } else {
        return Scaffold(backgroundColor: Colors.white,);
      }
    }else {
      return Scaffold(backgroundColor: Colors.white,);
    }
  }
}
