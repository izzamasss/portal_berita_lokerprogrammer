import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'home.dart';

class RegistPage extends StatefulWidget {
  @override
  _RegistPageState createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();
  addDataUser(
      TextEditingController userController,
      TextEditingController passController,
      TextEditingController pass2Controller) {
    if (userController.text != '' &&
        passController.text != '' &&
        pass2Controller.text != '' &&
        passController.text == pass2Controller.text) {
      setState(() {
        var link = linkAPI + "regist.php";
        http.post(link, body: {
          "username": userController.text,
          "password": passController.text
        });
      });
      Navigator.pop(context);
    } else {
      userController.text = '';
      passController.text = '';
      pass2Controller.text = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Registrasi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
                TextField(
                  controller: pass2Controller,
                  decoration: InputDecoration(hintText: "Konfirmasi Password"),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      child:
                          Text('Back', style: TextStyle(color: Colors.white)),
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
                      child: Text('Sign Up',
                          style: TextStyle(color: Colors.white)),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        addDataUser(
                            userController, passController, pass2Controller);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
