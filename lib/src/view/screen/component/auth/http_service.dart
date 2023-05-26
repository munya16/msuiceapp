import 'dart:convert';
import 'dart:io';
import 'package:ice/src/view/screen/component/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ice/src/view/screen/dash_board_screen.dart';


class HttpService {
  static final _client = http.Client();

  static var _loginUrl = Uri.parse('http://127.0.0.1:5000');

  static var _registerUrl = Uri.parse('http://127.0.0.1:5000');

  static login(phone, password, context) async {
    http.Response response = await _client.post(_loginUrl, body: {
      "phone": phone,
      "password": password,
    });

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      var json = jsonDecode(response.body);

      if (json[0] == 'success') {
        await EasyLoading.showSuccess(json[0]);
        await Navigator.push(
            context, MaterialPageRoute(builder: (context) => DashBoardScreen()));
      } else {
        EasyLoading.showError(json[0]);
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }

  static register(name, surname, age, sex, phone, password, context) async {
    http.Response response = await _client.post(_registerUrl, body: {
      "name": name,
      "surname": surname,
      "age": age,
      "sex": sex,
      "phone": phone,
      "password": password,
    });

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      if (json[0] == 'Account already exist') {
        await EasyLoading.showError(json[0]);

      } else {
        await EasyLoading.showSuccess(json[0]);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }
}