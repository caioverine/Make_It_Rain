import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<Home> {
  int _money = 0;

  void _giveMovey() {

    setState(() {
      _money = _money + 50;



    });
    print(_money);
  }

  @override
  Widget build(BuildContext context) {
    
    
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
                child: Text("\$$_money",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.green,
                  )
                ),
                onTap: () => _giveMovey()
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
                onPressed: () => _giveMovey()
              )
            )
          ]
        )
      )
    );
  }
}