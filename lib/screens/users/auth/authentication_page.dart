import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  bool _isLoginTabSelected = false;
  bool _isSignupTabSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: "QuicksandSemiBold",
                        fontSize: 30.0,
                        color: _isLoginTabSelected ? appGreen : Colors.grey),
                  ),
                  onTap: () {
                    setState(() {
                      _isLoginTabSelected = !_isLoginTabSelected;
                      Visibility(
                          visible: _isLoginTabSelected,
                          child: _buildLoginForm(context));
                    });
                  },
                ),
                const SizedBox(width: 40),
                Text("|",
                    style: TextStyle(
                        fontFamily: "QuicksandSemiBold",
                        color: Colors.grey.shade700,
                        fontSize: 30.0)),
                const SizedBox(width: 40),
                GestureDetector(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontFamily: "QuicksandSemiBold",
                        color: _isSignupTabSelected ? appGreen : Colors.grey,
                        fontSize: 30.0),
                  ),
                  onTap: () {
                    setState(() {
                      _isSignupTabSelected = !_isSignupTabSelected;
                      if (_isSignupTabSelected == true) {
                        _buildSignupForm(context);
                      }
                    });
                  },
                ),
              ],
            ),
            _buildLoginForm(context)
          ],
        ),
      ),
    );
  }

  // Widget for login

  Widget _buildLoginForm(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // TextFormField for username
        const SizedBox(height: 50),
        const Padding(
          padding: EdgeInsets.only(right: 290.0),
          child: Text(
            "Username",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Image.asset(
                  usernameIcon,
                  height: 0,
                ),
                hintText: "Enter your username"),
          ),
        ),
        // TextFormField for password
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(right: 290.0),
          child: Text(
            "Password",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Image.asset(passwordIcon),
                hintText: "Enter your password"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 250.0),
          child: TextButton(
              onPressed: () {
                //TODO: Navigate to forgot password page
              },
              child: const Text(
                "Forgot password?",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 150, vertical: 20)),
                onPressed: () {
                  //TODO: navigate to home page
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(color: Colors.black),
                ))),
      ],
    );
  }
}

// Widget for Signup
Widget _buildSignupForm(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // TextFormField for name
      const SizedBox(height: 50),
      const Padding(
        padding: EdgeInsets.only(right: 310.0),
        child: Text(
          "Name",
          style: TextStyle(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          decoration: const InputDecoration(hintText: "Enter your name"),
        ),
      ),
      // TextFormField for email
      const SizedBox(height: 20),
      const Padding(
        padding: EdgeInsets.only(right: 270.0),
        child: Text(
          "Email Address",
          style: TextStyle(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          decoration:
              const InputDecoration(hintText: "Enter your email address"),
        ),
      ),
      // TextFormField for phone number
      const SizedBox(height: 20),
      const Padding(
        padding: EdgeInsets.only(right: 270.0),
        child: Text(
          "Phone Number",
          style: TextStyle(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          keyboardType: TextInputType.phone,
          decoration:
              const InputDecoration(hintText: "Enter your Phone number"),
        ),
      ),
      //TextFormField for password
      const SizedBox(height: 20),
      const Padding(
        padding: EdgeInsets.only(right: 290.0),
        child: Text(
          "Password",
          style: TextStyle(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          decoration: const InputDecoration(hintText: "Enter Password"),
        ),
      ),
      // TextFormField for confirm password
      const SizedBox(height: 20),
      const Padding(
        padding: EdgeInsets.only(right: 250.0),
        child: Text(
          "Confirm Password",
          style: TextStyle(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          decoration: const InputDecoration(hintText: "Enter Password"),
        ),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 150, vertical: 20)),
              onPressed: () {
                //TODO: navigate to home page
              },
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.black),
              ))),
    ],
  );
}
