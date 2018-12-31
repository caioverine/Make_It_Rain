import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<Home> {
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
            Center(
              child: Text("Get Rich!",
                style: TextStyle(
                  fontSize: 15.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade800
                )
              )
            ),
            Center(
              child: InkWell(
                child: Text("\$$money",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.green,
                  )
                ),
                onTap: () => _giveMovey(money)
              )
            ),
            Center(
              child: RaisedButton(
                color: Colors.green,
                child: Text("Let it rain!",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400
                  )
                ),
                onPressed: () => _giveMovey(money)
              )
            )
          ]
        )
      )
    );
  }

  _giveMovey(money) {

    setState(() {
      money = money + 50;



    });
  }
}