// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_fonts/google_fonts.dart';

// class RegisterPage extends StatefulWidget {
//   final VoidCallback showLoginPage;
//   RegisterPage({super.key, required this.showLoginPage});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confimpasswordController = TextEditingController();
//   Future signUp() async {
//     try {
//       if (_passwordConfirmed()) {
//         await FirebaseAuth.instance.createUserWithEmailAndPassword(
//             email: _emailController.text.trim(),
//             password: _passwordController.text.trim());
//       }
//     } catch (ex) {
//       print(ex);
//     }
//   }

//   bool _passwordConfirmed() {
//     if (_confimpasswordController.text.trim() ==
//         _passwordController.text.trim()) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.grey[300],
//         body: Center(
//           child: SingleChildScrollView(
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               Icon(
//                 Icons.android,
//                 size: 100,
//               ),
//               SizedBox(height: 25),
//               Text(
//                 "Hello There!",
//                 style: GoogleFonts.bebasNeue(
//                   fontSize: 54,
//                 ),
//               ),
//               Text(
//                 "Register below with your  details",
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: TextField(
//                     controller: _emailController,
//                     decoration: InputDecoration(
//                       hintText: "Emai",
//                       fillColor: Colors.grey[200],
//                       filled: true,
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.white),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.deepPurple),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: TextField(
//                     controller: _passwordController,
//                     decoration: InputDecoration(
//                         fillColor: Colors.grey[200],
//                         filled: true,
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.white),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.deepPurple),
//                         ),
//                         hintText: "Password"),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: TextField(
//                     controller: _confimpasswordController,
//                     decoration: InputDecoration(
//                         fillColor: Colors.grey[200],
//                         filled: true,
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.white),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.deepPurple),
//                         ),
//                         hintText: "Confim Password"),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 25),
//                 child: Material(
//                   borderRadius: BorderRadius.circular(10),
//                   borderOnForeground: true,
//                   animationDuration: Duration(milliseconds: 200),
//                   color: Colors.deepPurple,
//                   child: InkWell(
//                     onTap: () => signUp(),
//                     child: Container(
//                       padding: const EdgeInsets.all(20),
//                       child: Center(
//                         child: Text(
//                           'Sign Up',
//                           style: TextStyle(
//                               fontSize: 23,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "I am a member? ",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                   ),
//                   GestureDetector(
//                     onTap: widget.showLoginPage,
//                     child: Text(
//                       "Login now",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                         color: Colors.lightBlue,
//                       ),
//                     ),
//                   )
//                 ],
//               )
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }
