git import 'package:flutter/material.dart';
import 'package:phpmysqlcrud/home_view.dart';

class Welcome extends StatelessWidget {
  static String rootName = "/welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          //crossMainAligment : CrossMai
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 90.0,
            ),
            Image.asset(
              "assets/logo.png",
              height: 350.0,
              width: 50.0,
            ),
            SizedBox(
              height: 6.0,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
              vertical: 0,
            )),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeViewScreen()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, //background color of button
                  side: BorderSide(
                      width: 3, color: Colors.blue), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(20) //content padding inside button
                  ),
              child: Text(
                'Connexion',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
