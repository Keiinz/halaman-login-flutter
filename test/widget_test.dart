import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guruji Login',
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFE70B89), // Top color
                  Color(0xFFCB0074), // Bottom color
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // 1. Logo Guruji
                    SizedBox(height: 150),
                    Image.asset(
                      'assets/guruji_logo.png',
                      width: 150, // Adjust size as needed
                      height: 150,
                    ),

                    SizedBox(height: 40),

                    // 2. Informational Text
                    Text(
                      'Learn Graphic and UI/UX designing in Hindi\nfor free with live projects.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Roboto-Regular',
                      ),
                    ),

                    SizedBox(height: 48),

                    // 3. Email Address Input
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF6CC5DE),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),

                    SizedBox(height: 15),

                    // 4. Password Input
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF6CC5DE),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                        ),
                        obscureText: true,
                      ),
                    ),

                    SizedBox(height: 30),

                    // 5. LOGIN Button
                    GestureDetector(
                      onTap: () {
                        // Handle login action
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFD8C00), // Orange color
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
                              color: Color(0xFFFFFFFF), // White text
                              fontSize: 15,
                              fontFamily: 'Roboto-Regular',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    // 6. Forgot Password
                    GestureDetector(
                      onTap: () {
                        // Handle forgot password action
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.white, // Changed to white
                              fontSize: 14,
                              fontFamily: 'Roboto-Regular',
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 60),

                    // 7. Social Media Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Google Button
                        CircleButton(
                          imagePath: 'assets/ic_google.png',
                          onTap: () {
                            // Handle Google sign-in
                          },
                        ),
                        SizedBox(width: 25),

                        // Facebook Button
                        CircleButton(
                          imagePath: 'assets/ic_facebook.png',
                          onTap: () {
                            // Handle Facebook sign-in
                          },
                        ),
                        SizedBox(width: 25),

                        // Twitter Button
                        CircleButton(
                          imagePath: 'assets/ic_twitter.png',
                          onTap: () {
                            // Handle Twitter sign-in
                          },
                        ),
                      ],
                    ),

                    SizedBox(height: 40),

                    // 8. Don’t have an account? Register now
                    GestureDetector(
                      onTap: () {
                        // Handle registration action
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(
                            color: Colors.white, // Changed to white
                            fontSize: 14,
                            fontFamily: 'Roboto-Regular',
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Register now',
                              style: TextStyle(
                                color: Colors.white, // Changed to white
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 40),

                    // 9. By signing up, you agree with our Terms & Conditions
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "By signing up, you agree with our ",
                        style: TextStyle(
                          color: Colors.white, // Regular text color
                          fontSize: 14,
                          fontFamily: 'Roboto-Regular',
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(
                              color: Colors.white, // Changed to white
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                            // You can add a recognizer here for tap actions if needed
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
          color: Colors.white, // Background color for the circle
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
