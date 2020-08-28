import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'formlogin.dart';
import 'formregist.dart';
import 'main.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  var content;
  SharedPreferences prefs;
  @override
  void initState() {
    super.initState();
    startLaunch();
  }

  Future<void> startLaunch() async {
    prefs = await SharedPreferences.getInstance();
    var login = prefs.getString('login');
    if (login != null) {
      setState(() {
        content = sudahLogin(login);
      });
    } else {
      setState(() {
        content = belumLogin();
      });
    }
  }

  Future<void> logOut() async {
    print('logout');
    prefs = await SharedPreferences.getInstance();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
      prefs.remove("login");
      return MyApp(initialPage: 2);
    }));
  }

  belumLogin() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.account_circle, size: 150, color: Colors.red),
        FlatButton(
          child: Text('Masuk', style: TextStyle(color: Colors.white)),
          color: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Belum memiliki akun? '),
            GestureDetector(
              child: Text(
                'Create Account',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegistPage()));
              },
            ),
          ],
        ),
      ],
    );
  }

  sudahLogin(String username) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.account_circle, size: 150, color: Colors.red),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.red, width: 3),
          ),
          // child: Text(username, style: TextStyle(fontSize: 20)),
          child: Text('Ini Nama User', style: TextStyle(fontSize: 20)),
        ),
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {
            logOut();
          },
          color: Colors.red,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: content);
  }
}
