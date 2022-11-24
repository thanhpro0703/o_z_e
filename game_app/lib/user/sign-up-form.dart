import 'package:flutter/material.dart';

class SignUpX extends StatefulWidget {
  const SignUpX({Key? key}) : super(key: key);

  @override
  State<SignUpX> createState() => _SignUpXState();
}

class _SignUpXState extends State<SignUpX> {
  @override
  Widget build(BuildContext context) {
    Widget textField(bool obs, String text) => TextField(
          obscureText: obs,
          decoration: InputDecoration(
            label: Text(text),
            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            labelStyle: TextStyle(color: Colors.grey),
          ),
        );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background-login.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.fromLTRB(0, 30, 30, 0),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 100,
                    ),
                    textField(false, 'Firstname...'),
                    textField(false, 'Lastname...'),
                    textField(false, 'Username...'),
                    textField(true, 'Password...'),
                    textField(true, 'Confirm...'),
                    textField(false, 'Email...'),
                    textField(false, 'Phone...'),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Create'),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(35, 0, 35, 0)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sign Up With',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                          size: 35,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/300/300221.png'),
                          width: 30,
                        )
                      ],
                    ),
                  ],
                )),
            Align(
                alignment: Alignment.bottomLeft,
                child: Transform.scale(
                  scaleX: -1,
                  child: Image.asset(
                    'images/pigmessage.png',
                    width: 150,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
