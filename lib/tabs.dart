import 'package:flutter/material.dart';

class UserTabs extends StatelessWidget {

  final bool isNewUser;
  const UserTabs({super.key, required this.isNewUser});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: isNewUser? [
                    TextField(
                      decoration: InputDecoration(labelText: "Full Name",suffixIcon: Icon(Icons.person_outline,color: Colors.purple)),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(labelText: "Email",suffixIcon: Icon(Icons.email_outlined,color: Colors.purple,)),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(labelText: "Password",suffixIcon: Icon(Icons.lock_outline,color: Colors.purple,)),
                      obscureText: true,
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(labelText: "Confirm Password",suffixIcon: Icon(Icons.lock_outline,color: Colors.purple,)),
                      obscureText: true,
                    ),
                  ]:[
                    TextField(
                      decoration: InputDecoration(labelText: "Email",suffixIcon: Icon(Icons.email_outlined,color: Colors.purple,)),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(labelText: "Password",suffixIcon: Icon(Icons.lock_outline,color: Colors.purple,)),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: -25,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.purpleAccent, Colors.deepPurple],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        ),
                        child: Text(isNewUser? "Sign Up" : "Log In")
                    ),
                  ),
                )
            ),
          ],
        ),
        if(!isNewUser)
          Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  TextButton(
                      onPressed: (){},
                      child: Text("Forgot Password?", style: TextStyle(color: Colors.white, fontSize: 15,),)
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                              color: Colors.white,
                              thickness: 1.2,
                            ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "OR",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                              ),
                            ),
                        ),
                        Expanded(
                            child: Divider(
                              color: Colors.white,
                              thickness: 1.2,
                            )
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.grey[100],
                        child: Image.asset("images/fb.jpeg", height: 25,),
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.grey[100],
                        child: Image.asset("images/google.jpeg",height: 25,),
                      )
                    ],
                  )
                ],
              ),
          )
      ],
    );
  }
}