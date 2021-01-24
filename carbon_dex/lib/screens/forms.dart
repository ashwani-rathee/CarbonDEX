import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'slider_widget.dart';

int value = 6;

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CarbonDEX',
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.w300,
            letterSpacing: 2.0,
            color: Colors.amber[100],
            fontFamily: 'Rock',
          ),
        ),
        centerTitle: true,
        // backgroundColor: Colors.lightGreen[800],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        height: 220,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(7),
            child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Stack(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    cardTitle(),
                                    Spacer(),
                                    vehicleIcon(),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    //Spacer(),
                                    //cryptoNameSymbol(),
                                    //Spacer(),
                                    //cryptoChange(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    //changeIcon(),
                                    SizedBox(
                                      width: 20,
                                    )
                                  ],
                                ),
                                SizedBox(   //Use of SizedBox
                                  height: 30,
                                ),
                                Row(
                                  children: <Widget> [SliderWidget()],
                                )
                              ],
                            ))
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }

  Widget vehicleIcon() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerRight,
          child: Icon(
            CupertinoIcons.flame_fill,
            color: Colors.blueAccent,
            size: 80,
          )),
    );
  }
  Widget cardTitle() {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'Enter your car\'s fuel\nconsumption',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: '\n\nin L/100 km.',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }


}