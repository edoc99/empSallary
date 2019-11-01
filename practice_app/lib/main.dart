import 'package:flutter/material.dart';
import 'package:practice_app/HomePage.dart';

void main()
{
  runApp(PracticeApp());
}

class PracticeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: LoginPage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.yellow[700],
        accentColor: Colors.red,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _globalKeyScaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    final logo = Hero(
      tag: 'logo',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assests/avatar.png'),
      ),
    );

    final txtUserName = TextField(
      controller: usernameController,
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0)
          )
        )
      );

    final txtPassword = TextField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0)
          )
      )
    );

    final btnLogin = RaisedButton(
      child: Text('Login'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: () {
        if(usernameController != null && usernameController.text == 'abc'
        && passwordController != null && passwordController.text == '123')
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          }
        else
          {
            //_showAlertDialog();
            _showSnackBar();
          }
      },
    );

    final btnFrgtPass = FlatButton(
      child: Text(
        'Forget Password',
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      key: _globalKeyScaffold,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 50, right: 50),
          children: <Widget>[
            logo,
            SizedBox(height: 20.0),
            txtUserName,
            SizedBox(height: 6.0),
            txtPassword,
            SizedBox(height: 10.0),
            btnLogin,
            SizedBox(height: 1.0),
            btnFrgtPass
          ],
        ),
      ),
    );
  }

  
  void _showAlertDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context)
        {
          return AlertDialog(
           title: Text('Wrong Username or Password'),
           content: Text('Please enter a valid Username and Password.'),
           actions: <Widget>[
             FlatButton(
               onPressed: () => Navigator.of(context).pop(),
               child: Text('Try again?'),
             )
           ],
          );
        }
    );
  }

  void _showSnackBar() {
    final _snackBar = SnackBar(content: Text('Wrong Useraname or Password.'));

    _globalKeyScaffold.currentState.showSnackBar(_snackBar);
  }
}