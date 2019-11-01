import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:  Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      /*body: Center(
        /*child: Text(
          'Hello There!!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
          ),
        ),*/
        /*child: Image(
          image: AssetImage('assets/img1.jpg'),
        )*/
        /*child: Icon(
          Icons.airport_shuttle,
          color: Colors.black,
          size: 50.0,
        ),*/
        /*child: RaisedButton.icon(
          onPressed: () {
            print('You Just Mailed');
          },
          icon: Icon(
            Icons.mail
          ),
          label: Text('Mail Me'),
          color: Colors.lightBlue,
        ),*/
        /*child: IconButton(
          onPressed: () {
            print('You Just Clicked');
          },
          icon: Icon(Icons.alternate_email),
          color: Colors.amber,
        ),*/
      ),*/
      /*body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hello'),
          FlatButton(
            onPressed: () {},
            color: Colors.amber,
            child: Text('Click Me'),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('Inside Container'),
          ),
        ],
      ),*/
     /* body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('One'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.pink,
            child: Text('Two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.amber,
            child: Text('Three'),
          ),
        ],
      ),*/
     body: Row(
       children: <Widget>[
         Expanded(
             child: Image.asset('assets/img1.jpg'),
           flex: 3,
         ),
         Expanded(
           flex: 1,
           child: Container(
             padding: EdgeInsets.all(30.0),
             color: Colors.cyan,
             child: Text('1'),
           ),
         ),
         Expanded(
           flex: 1,
           child: Container(
             padding: EdgeInsets.all(30.0),
             color: Colors.pinkAccent,
             child: Text('2'),
           ),
         ),
         Expanded(
           flex: 1,
           child: Container(
             padding: EdgeInsets.all(30.0),
             color: Colors.amberAccent,
             child: Text('3'),
           ),
         ),
       ],
     ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}


