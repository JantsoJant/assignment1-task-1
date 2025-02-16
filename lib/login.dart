
import 'package:flutter/material.dart';
import './signup.dart';
import 'tabs.dart';

// class AuthScreen extends StatefulWidget {
//   @override
//   _AuthScreenState createState() => _AuthScreenState();
// }
//
// class _AuthScreenState extends State<AuthScreen> {
//   bool isLogin = true; // Track whether Login or Signup is active
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.pink, Colors.deepPurple],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset('images/img-1.png', height: 120),
//             SizedBox(height: 20),
//
//             // Toggle Switch
//             Container(
//               width: 221,
//               padding: EdgeInsets.all(1), // Padding around the toggle
//               decoration: BoxDecoration(
//                 color: Colors.white, // Background color with transparency
//                 borderRadius: BorderRadius.circular(40), // Rounded corners
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         isLogin = true;
//                       });
//                     },
//                     child: Container(
//                       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                       decoration: BoxDecoration(
//                         gradient: isLogin
//                             ? LinearGradient(
//                           colors: [Colors.purple, Colors.pinkAccent],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         )
//                             : null,
//                         color: isLogin ? null : Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(30)),
//                         border: Border.all(color: Colors.white, width: 2),
//                       ),
//                       child: Text(
//                         "Existing",
//                         style: TextStyle(
//                           color: isLogin ? Colors.white: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         isLogin = false;
//                       });
//                     },
//                     child: Container(
//                       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                       decoration: BoxDecoration(
//                         gradient: !isLogin
//                             ? LinearGradient(
//                           colors: [Colors.purple, Colors.pinkAccent],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         )
//                             : null,
//                         color: !isLogin ? null : Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(30)),
//                         border: Border.all(color: Colors.white, width: 2),
//                       ),
//                       child: Text(
//                         "New User",
//                         style: TextStyle(
//                           color: !isLogin ? Colors.white : Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//
//
//             SizedBox(height: 20),
//
//             // Show Login or Signup Form
//             isLogin ? buildLoginForm() : buildSignupForm(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Login Form
//   Widget buildLoginForm() {
//     return Container(
//       child: Column(
//         children: [
//
//           buildInputField(Icons.person, "Username"),
//           buildInputField(Icons.lock, "Password", obscureText: true),
//
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => HomeScreen(), // Navigate to SuccessPage1
//                 ),
//               );
//
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.purple.shade700,
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//               padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
//             ),
//             child: Text("Log In",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18)
//             ),
//           ),
//           TextButton(
//             onPressed: () {},
//             child: Text("Forgot Password?", style: TextStyle(color: Colors.white)),
//           ),
//           SizedBox(height: 10),
//           Text("OR", style: TextStyle(color: Colors.white)),
//           SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               buildSocialIcon("images/fb.jpeg"),
//               SizedBox(width: 20),
//               buildSocialIcon("images/google.jpeg"),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Signup Form
//   Widget buildSignupForm() {
//     return Column(
//
//       children: [
//         buildInputField(Icons.person, "Username"),
//         buildInputField(Icons.email, "Email"),
//         buildInputField(Icons.lock, "Password", obscureText: true),
//         buildInputField(Icons.lock, "Confirm Password", obscureText: true),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.purple.shade700,
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//             padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
//           ),
//           child: Text("Sign Up",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18)
//           ),
//         ),
//       ],
//     );
//   }
//
//   // Input Field Widget
//   Widget buildInputField(IconData icon, String hint, {bool obscureText = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
//       child: TextField(
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: Colors.white,
//           prefixIcon: Icon(icon, color: Colors.purple),
//           hintText: hint,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30),
//             borderSide: BorderSide.none,
//           ),
//         ),
//       ),
//     );
//   }
//
//   // Social Media Login Icons
//   Widget buildSocialIcon(String assetPath) {
//     return GestureDetector(
//       onTap: () {},
//       child: CircleAvatar(
//         radius: 20,
//         backgroundColor: Colors.white,
//         child: Image.asset(assetPath, height: 25),
//       ),
//     );
//   }
// }


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{
  bool isNewUser = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: AssetImage("images/img-1.png"),
                width: 200,
            ),

            SizedBox(height: 10,),

            Column(
              children: [
                Container(
                  width: 300,
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: isNewUser ? null : BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.deepPurple, Colors.purple],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                isNewUser = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              foregroundColor: isNewUser ? Colors.deepPurple : Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                            ),
                            child: Text("Existing")
                        ),
                      ),
                      Container(
                        decoration: isNewUser ? BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.deepPurple, Colors.purple],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ) : null,
                        child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                isNewUser = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              foregroundColor: isNewUser ? Colors.white : Colors.deepPurple,
                              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                            ),
                            child: Text("New User")
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                UserTabs(isNewUser: isNewUser),
              ],
            ),
          ],
        )
      ),
    );
  }
}