import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rappid_poc/jsonController/jsonData.dart';
import 'package:rappid_poc/widgets/build_widget.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Map<String, dynamic>? uiConfig = {};
  JsonController jsonController = JsonController();


  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    await SignInData();
    uiConfig = await jsonController.loadSignInScreenUI();
    setState(() {});
  }

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
