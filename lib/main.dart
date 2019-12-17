import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
              'Where to Eat?',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,),
          ),
          backgroundColor: Colors.deepOrange[900],
          centerTitle: true,
        ),
        body: RestoPage(),
      ),
    ),
  );
}

class RestoPage extends StatefulWidget {
  @override
  _RestoPageState createState() => _RestoPageState();
}

class _RestoPageState extends State<RestoPage> {
  int restoNumber = 0;

  void cheapResto(){
    setState(() {
      restoNumber = 2*(Random().nextInt(7))+2;
    }
    );
  }

  void expensiveResto(){
    setState(() {
      restoNumber = 2*(Random().nextInt(8))+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 50, 15, 10),
                child: Image.asset('images/resto$restoNumber.png'),
                width: 500,
                height: 100,
              ),
            ),
            new Container(
              padding: EdgeInsets.only(bottom: 100),
              width: 500,
              height: 300,
              child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                //  Expanded(
                    new SizedBox(
                      width: 200,
                      height: 50,
                        child: new RaisedButton(
                          onPressed: (){
                            cheapResto();
                            print('Budget-friendly button got pressed.');
                          },
                           color: Colors.orange[300],
                           splashColor: Colors.grey[350],
                          child: Text(
                              'Budget-friendly',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                                fontFamily: 'PalanquinDark'),
                          ),
                        ),
                    ),
                //  ),
            //     Expanded(
                    new SizedBox(
                      width: 200,
                      height: 50,
                      child: new RaisedButton(
                        onPressed: (){
                          expensiveResto();
                          print('Expensive button got pressed.');
                        },
                        color: Colors.orange[300],
                        splashColor: Colors.grey[350],
                      child: Text(
                          'Expensive',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontFamily: 'PalanquinDark'),
                    ),
                      ),
                    ),
              ],
            ),
            ),
                ],
      ),
      );
    }
}
