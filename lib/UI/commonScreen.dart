import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rappid_poc/widgets/build_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatefulWidget {
  final String url;
  const WebScreen({Key? key, required this.url}) : super(key: key);

  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  Map<String, dynamic>? uiConfig;

  @override
  void initState() {
    super.initState();
    loadUiConfig();
  }

  // Replace this method with your logic to load or fetch JSON data
  void loadUiConfig() async {
    final url = 'http://13.232.108.85/rappid/api-v2/public/dynamic-screens?screen=3&ui_type=S3';

    try {
      final response = await http.get(Uri.parse(url));
      if (response != null) {
        setState(() {
          uiConfig = json.decode(response.body);
        });
      } else {
        // Handle error
      }
    } catch (error) {
      // Handle error
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (uiConfig != null) {
      if (uiConfig!["type"] == "scaffold") {
        return Scaffold(
          backgroundColor: Color(int.parse(
              uiConfig!["backgroundColor"].substring(1, 7), radix: 16) + 0xFF000000),
          body: BuildWidget(uiConfig!["body"]),
        );
      } else {
        return Scaffold(backgroundColor: Colors.white,);
      }
    } else {
      return Scaffold(backgroundColor: Colors.white,);
    }
  }
}



