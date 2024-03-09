import 'package:firebaseeg/Firebase/Firebase_helper.dart';
import 'package:firebaseeg/Firebase/Login_firebase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: fhome(),
  ));
}

class fhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                  child: TextButton(
                child: Text('LOGOUT',
                    style: TextStyle(
                        fontFamily:
                            'assets/fonts/Genos/static/Genos-Black.ttf')),
                onPressed: () {
                  FireBaseHelper().logout().then((value) => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login())));
                },
              )),
            ];
          })
        ],
      ),
      body: Center(
        child: ListView(
          children: [Center(child: Text('welcome to the new venture'))],
        ),
      ),
    );
  }
}
