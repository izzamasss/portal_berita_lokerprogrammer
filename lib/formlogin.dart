import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'home.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future<List> getData() async {
    final response = await http.get(linkAPI + "login.php");
    return json.decode(response.body);
  }

  Future<void> cekLogin(List data, TextEditingController userController,
      TextEditingController passController) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int login = 0;
    for (var i = 0; i < data.length; i++) {
      if (data[i]['username'] == userController.text &&
          data[i]['password'] == passController.text) {
        login = 1;
      }
    }
    if (login == 1) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        prefs.setString('login', userController.text);
        return MyApp(initialPage: 2);
      }));
    }
    // tidak bisa login
    else {
      userController.text = '';
      passController.text = '';
      return FToast(context).showToast(
        toastDuration: Duration(milliseconds: 2000),
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.grey,
          ),
          child: Text('Username dan Password salah'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<List>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print(snapshot.error);
            }
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              ); // untuk tampilan tidak ada data di db
            } else {
              return Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: userController,
                        decoration: InputDecoration(hintText: "Username"),
                      ),
                      TextField(
                        controller: passController,
                        decoration: InputDecoration(hintText: "Password"),
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            child: Text('Back',
                                style: TextStyle(color: Colors.white)),
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(width: 20),
                          FlatButton(
                            child: Text('Login',
                                style: TextStyle(color: Colors.white)),
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            onPressed: () {
                              cekLogin(snapshot.data, userController,
                                  passController);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
