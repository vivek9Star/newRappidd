import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rappid_poc/jsonController/jsonData.dart';
import 'package:rappid_poc/widgets/build_widget.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Map<String, dynamic>? uiConfig = {};
  JsonController jsonController = JsonController();


  @override
  void initState() {
    super.initState();
    apiCall();
  }

  apiCall() async {
    await CartData();
    uiConfig = await jsonController.loadCartScreenUI();
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
