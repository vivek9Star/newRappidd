
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rappid_poc/UI/signUpScreen/signUpScreeen.dart';
import 'package:rappid_poc/jsonController/jsonData.dart';
import 'package:rappid_poc/widgets/build_widget.dart';
import 'package:rappid_poc/widgets/customAlert.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  JsonController jsonController = new JsonController();
  Map<String, dynamic>? uiConfig = {};


  @override
  void initState() {
    super.initState();
    apiCall();
  }
  // apiCall() async {
  //   await fetchSpalsh(context);
  //   uiConfig = await jsonController.loadSplashScreenUI();
  //
  //
  //   // Future.delayed(Duration(seconds: 2),(){
  //   //   setState(() {
  //   //     Get.to(() => SignUpScreen());
  //   //   });
  //   // });
  //   setState(() {});
  // }

  apiCall() async {
    try {
      if (uiConfig != null) {
        await fetchSpalsh(context);
        uiConfig = await jsonController.loadSplashScreenUI();
          setState(() {});
      }
    } catch (e) {
      // Handle any exceptions that occur during the API call
      CustomErrorDialog.showErrorDialog(context, 404);

    } finally {
      // Future.delayed(Duration(seconds: 2),(){
      //   setState(() {
      //     Get.to(() => SignUpScreen());
      //   });
      // });

    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    // Parse the JSON and build the UI accordingly
    if(uiConfig != null){
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
          drawerEnableOpenDragGesture: false,
          drawer: Drawer(),
          backgroundColor: Theme.of(context).colorScheme.background,
          //backgroundColor: Color(int.parse(uiConfig!["backgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
          body: RefreshIndicator(
              child: BuildWidget(uiConfig!["body"]),
            onRefresh: (){
                 return  Future.delayed(Duration(seconds: 1),(){
                setState(() {
                  apiCall();
                  showSnackBar("Page Updated");
                });
              }
              );
            },
          ),
          // bottomNavigationBar: CustomNavigationBar(),
        );
      } else {
        return Scaffold(backgroundColor: Colors.white,);
      }
    }else {
      return Scaffold(backgroundColor: Colors.white,);
    }
  }
}
