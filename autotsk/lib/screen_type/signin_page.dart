import 'package:flutter/material.dart';
import 'package:autotsk/util/color.dart';
import 'package:autotsk/util/text_input_field.dart';

// dimensions, width: 365, height: 623
import 'package:flutter/material.dart';
import 'package:autotsk/util/color.dart';
import 'package:autotsk/util/text_input_field.dart';

// dimensions, width: 365, height: 623
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passWController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: signUpBgColour,
          width: 365,
          height: 623,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sign In",
                style: TextStyle(
                    fontFamily: 'Neometric',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              Text(
                "Email",
                style: TextStyle(
                    fontFamily: 'Neometric',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),

              // text field for email input
              TextInputField(
                textEditingController: _emailController,
                hintText: 'Enter your Email',
                textInputType: TextInputType.emailAddress,
              ),

              SizedBox(height: 10),

              Text(
                "Password",
                style: TextStyle(
                    fontFamily: 'Neometric',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),

              // text field for password input
              TextInputField(
                textEditingController: _passWController,
                hintText: 'Enter your Password',
                textInputType: TextInputType.visiblePassword,
                isPassW: true,
              ),

              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {},
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  primary: signButtonColour,
                  padding: EdgeInsets.fromLTRB(125, 0, 125, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
