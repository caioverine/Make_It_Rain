import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    int money = 0;
    
    return Scaffold(


      backgroundColor: Colors.grey.shade400,

      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Make It Rain!"),
      ),

      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Get Rich!",
              style: TextStyle(
                fontSize: 15.5,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade800
              )
            ),
            InkWell(
              child: Text("$money",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.green,
                )
              ),
              onTap: () => money = _giveMovey(money)
            ),
            RaisedButton(
              color: Colors.green,
              child: Text("Let it rain!",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400
                )
              ),
              onPressed: () => money = _giveMovey(money)
            )
          ]
        )
      )
    );
  }

  _giveMovey(money) {
    return money + 50;
  }
}