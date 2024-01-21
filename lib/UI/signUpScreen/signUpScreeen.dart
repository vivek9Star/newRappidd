import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rappid_poc/jsonController/jsonData.dart';
import 'package:rappid_poc/widgets/build_widget.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Map<String, dynamic>? uiConfig = {};
  JsonController jsonController = JsonController();



  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    await featchSignUpData();
    uiConfig = await jsonController.loadSignUpScreenUI();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Parse the JSON and build the UI accordingly
    if(uiConfig != null){
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
          backgroundColor: Color(int.parse(uiConfig!["backgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
          body: RefreshIndicator(
            color: Colors.blue,
              onRefresh: (){
                return Future.delayed(Duration(seconds: 1),
                      () {
                    setState(() {
                      apiCall();
                    });
                  },
                );
              },
              child: BuildWidget(uiConfig!["body"])),
        );
      } else {
        return Scaffold(backgroundColor: Colors.white,);
      }
    }else {
      return Scaffold(backgroundColor: Colors.white,);
    }
  }
}
