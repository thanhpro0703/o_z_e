import 'package:flutter/material.dart';
import 'package:game_app/screen_maingame/screen_maingame.dart';
import 'sign-up-form.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';
  String message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bg4la.jpg'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 250, 10, 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pigbackground.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(103, 34, 34, 10),
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Username...'),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.cyan)),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(
                                color: Colors.cyanAccent,
                              ),
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            ),
                            onChanged: (value) {
                              username = value;
                            },
                            validator: (value) {
                              if (value == '') {
                                return 'Username kh??ng ???????c b??? tr???ng';
                              }
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Password...'),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.cyan)),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(
                                color: Colors.cyanAccent,
                              ),
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            ),
                            onChanged: (value) {
                              password = value;
                            },
                            validator: (value) {
                              if (value == '') {
                                return 'Password kh??ng ???????c b??? tr???ng';
                              }
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/pigbed.png',
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/pigbed.png',
                                    width: 30,
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      message = '????ng nh???p th??nh c??ng!';
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ScreenMainGame()));
                                    } else {
                                      message = 'Th???t b???i';
                                    }
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                                    child: Text('????ng nh???p'),
                                  )),
                              ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      message = '????ng nh???p th??nh c??ng!';
                                    } else {
                                      message = 'Th???t b???i';
                                    }
                                    setState(() {});
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => SignUp()));
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 8, 10, 8),
                                      child: Text('????ng k??'),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            message,
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Transform.scale(
              scaleX: -1,
              child: Image.asset(
                'assets/pigbed.png',
                width: 50,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage('assets/pigbed.png'),
                width: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
//sdf
