import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guruji Login',
      home: Scaffold(
        body: Container(
          // Set the gradient background for the whole app
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFE70B89), Color(0xFFCB0074)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 80), // Spacing from top
                  Image.asset(
                    'assets/images/guruji_logo.png', // Updated path
                    width: 177.29, // Exact width
                    height: 109.01, // Exact height
                  ),
                  SizedBox(height: 30), // Spacing between logo and text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Learn Graphic and UI/UX designing in Hindi\nfor free with live projects.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Roboto-Regular',
                      ),
                    ),
                  ),
                  SizedBox(height: 30), // Spacing before email input
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF), // White background (#FFFFFF)
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(
                          color: Color(0xFF767676), // Gray text (#767676)
                          fontSize: 15,
                        ),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(height: 20), // Spacing before password input
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF), // White background (#FFFFFF)
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color(0xFF767676), // Gray text (#767676)
                          fontSize: 15,
                        ),
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20), // Spacing before login button
                  GestureDetector(
                    onTap: () {
                      // Handle login action
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFFD8C00), // Set the background color for login button
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.16),
                            spreadRadius: 0,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 15,
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Spacing before forgot password
                  GestureDetector(
                    onTap: () {
                      // Handle forgot password action
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Roboto-Regular',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Spacing before register link
                  GestureDetector(
                    onTap: () {
                      // Handle registration action
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Don’t have an account? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto-Regular',
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Register now',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40), // Spacing before social media buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleButton(
                        imagePath: 'assets/images/ic_google.png', // Updated path
                        onTap: () {
                          // Handle Google sign-in
                        },
                      ),
                      SizedBox(width: 25),
                      CircleButton(
                        imagePath: 'assets/images/ic_facebook.png', // Updated path
                        onTap: () {
                          // Handle Facebook sign-in
                        },
                      ),
                      SizedBox(width: 25),
                      CircleButton(
                        imagePath: 'assets/images/ic_twitter.png', // Updated path
                        onTap: () {
                          // Handle Twitter sign-in
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 40), // Spacing before terms & conditions
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "By signing up, you agree with our ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto-Regular',
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50), // Spacing before bottom
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget for circular buttons with an icon image
class CircleButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback? onTap;

  CircleButton({required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Handle tap if provided
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            imagePath,
            width: 24,
            height: 24,
          ),
        ),
      ),
    );
  }
}
