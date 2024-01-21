import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rappid_poc/api/api_service.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:rappid_poc/commonScreen.dart';
import 'package:rappid_poc/widgets/customAlert.dart';






var res;


class JsonController {

  loadSplashScreenUI() {
    final jsonString = res;
    final parsedJson  = json.decode(jsonString);
    return parsedJson;
  }


  loadSignUpScreenUI() {
    final jsonString = res;
    final parsedJson  = json.decode(jsonString);
    return parsedJson;
  }

  loadSignInScreenUI() {
    final jsonString = res;
    final parsedJson  = json.decode(jsonString);
    return parsedJson;
  }

  loadHomeScreenUI() {
    final jsonString = res;
    final parsedJson  = json.decode(jsonString);
    return parsedJson;
  }

  loadDetailsScreenUI() {
    final jsonString = res;
    final parsedJson  = json.decode(jsonString);
    return parsedJson;
  }

  loadCartScreenUI() {
    final jsonString = res;
    final parsedJson  = json.decode(jsonString);
    return parsedJson;
  }


}

final dio = Dio();
final apiService = ApiService(dio);


 fetchData1(String apiUrl,context) async {
  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    print('Response data: ${response.body}');
    if (response != null) {
      res = response.body;
      print(response);
      Get.offAll(() => CommonApiScreen(),arguments: res);
    }
  } else {
    CustomErrorDialog.showErrorDialog(context, 404);
    // Handle error
    print('Error: ${response.statusCode}');
  }
}



//Splash Screen
Future<void> fetchSpalsh(context) async {
  try {
    final response = await apiService.fetchSplashData();
    if (response != null) {
      res = response;
      print(response);
    } else {
      CustomErrorDialog.showErrorDialog(context, 404);
      print('Failed to fetch data');
    }
  } catch (e) {
    // Handle network or other errors
    print('Error: $e');
  }
}

Future<void> featchSignUpData() async {
  try {
    final response = await apiService.fetchSignUpData();
    if (response != null) {
      res = response;
      print(response);
    } else {
      // Handle error
      print('Failed to fetch data');
    }
  } catch (e) {
    // Handle network or other errors
    print('Error: $e');
  }
}

Future<void> SignInData() async {
  try {
    final response = await apiService.fetchSignInData();
    if (response != null) {
      res = response;
      print(response);
    } else {
      // Handle error
      print('Failed to fetch data');
    }
  } catch (e) {
    // Handle network or other errors
    print('Error: $e');
  }
}



Future<void> HomeData() async {
  try {
    final response = await apiService.fetchHomeData();
    if (response != null) {
      res = response;
      print(response);
    } else {
      // Handle error
      print('Failed to fetch data');
    }
  } catch (e) {
    // Handle network or other errors
    print('Error: $e');
  }
}

Future<void> DetailsData() async {
  try {
    final response = await apiService.fetchDetailsData();
    if (response != null) {
      res = response;
      print(response);
    } else {
      // Handle error
      print('Failed to fetch data');
    }
  } catch (e) {
    // Handle network or other errors
    print('Error: $e');
  }
}

Future<void> CartData() async {
  try {
    final response = await apiService.fetchCartData();
    if (response != null) {
      res = response;
      print(response);
    } else {
      // Handle error
      print('Failed to fetch data');
    }
  } catch (e) {
    // Handle network or other errors
    print('Error: $e');
  }
}


Future<String> fetchData(String apiUrl) async {
  try {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Parse the response JSON if the request is successful
      Map<String, dynamic> data = json.decode(response.body);

      print(data);

      // You can process the response and return a String based on your needs
      return "Data successfully fetched!";
    } else {
      // Handle error
      print('Failed to fetch data');

      // Return an error message or throw an exception
      throw Exception('Failed to fetch data');
    }
  } catch (e) {
    // Handle network or other errors
    print('Error: $e');

    // Return an error message or throw an exception
    throw Exception('Error: $e');
  }

}




