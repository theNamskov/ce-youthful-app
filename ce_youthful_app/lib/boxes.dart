import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
  BoxDecoration _myBoxDecoration(Color myColor) {
    return BoxDecoration(
      color: myColor,
      borderRadius: BorderRadius.circular(20.0),
    );
  }

  TextStyle _topRowTextStyle(double myFontSize, Color myColor) {
    return TextStyle(
      fontSize: myFontSize,
      color: myColor,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle _middleRowTextStyle() {
    return TextStyle(
      fontSize: 40,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle _bottomRowTextStyle() {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    double _paddingSize = 11;
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // top row
              Padding(padding: EdgeInsets.all(_paddingSize),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: _myBoxDecoration(Colors.blue),
                    child: Center(
                      child: Text(
                        "SUPER\nSUNDAY",
                        style: _topRowTextStyle(30, Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: _myBoxDecoration(Colors.indigo),
                    child: Center(
                      child: Text(
                        'MIDWEEK',
                        style: _topRowTextStyle(20, Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(_paddingSize),),
              // middle row
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 350.0,
                    decoration: _myBoxDecoration(Colors.purple),
                    child: Center(
                      child: Text(
                        'SWAG SERVICE',
                        style: _middleRowTextStyle(),
                      ),
                    ),
                  ),
                ],
              ),
              // bottom row
              Padding(padding: EdgeInsets.all(_paddingSize),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: _myBoxDecoration(Colors.red),
                    child: Center(
                      child: Text(
                        '#EVENTFLYER',
                        style: _bottomRowTextStyle(),
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: _myBoxDecoration(Colors.yellow),
                    child: Center(
                      child: Text(
                        '#EVENTFLYER',
                        style: _bottomRowTextStyle(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
