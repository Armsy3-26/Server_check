import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NetworkController extends GetxController {
  //a function that queries results
  Map feedback = {};

  Future queryResult(symptoms) async {
    var url = Uri.parse('http://51.255.62.21:5000/network/$symptoms');

    var response = await http.get(
      url,
    );

    var res = jsonDecode(response.body);

    if (response.statusCode == 200) {
      feedback = res;
    }

    update();
  }
}
