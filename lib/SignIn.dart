import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: new AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width,
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Welcome Text
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/6, left: MediaQuery.of(context).size.width/10),
                        child: Text(
                          "Welcome!!",
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 120.0),
                      // curved card shape for sign in/ sign up
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50.0),
                            topLeft: Radius.circular(50.0),
                          ),
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, bottom: 20.0),
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  // input area text fields
                                  Container(
                                      child: Column(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, right: 10.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                filled: true,
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[800]),
                                                hintText: "Email: ",
                                                fillColor: Colors.white70),
                                          ),
                                        ),
                                      ),

                                      //Password
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            obscureText: true,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                filled: true,
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[800]),
                                                hintText: "Password: ",
                                                fillColor: Colors.white70),
                                          ),
                                        ),
                                      ),
                                      // forgot password link
                                      Container(
                                        main
                                          child: Text("Forgot password?")),

                                      // Submit Button
                                      Container(
                                        child: TextButton(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(28.0),
                                            )),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.blue),
                                          ),
                                          onPressed: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0,
                                                bottom: 8.0,
                                                left: 13.0,
                                                right: 13.0),
                                            child: Text(
                                              "Sign In",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      // divider with text in between
                                      Container(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                    left: 25.0),
                                                child: Divider(
                                                  thickness: 3.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text("Or Sign In With"),
                                            ),
                                            Expanded(
                                                child: Container(
                                              margin: const EdgeInsets.only(
                                                  right: 25.0),
                                              child: Divider(
                                                thickness: 3.0,
                                                color: Colors.black,
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),

                                      // Google or Facebook sign in icons
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/google.png",
                                            height: 30.0,
                                            width: 30.0,
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          Image.asset(
                                            "assets/facebook.png",
                                            height: 35.0,
                                            width: 35.0,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Don't have an account?",
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Sign Up",
                                              style: TextStyle(
                                                color: Colors.amber,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
