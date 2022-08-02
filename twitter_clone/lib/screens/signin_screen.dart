import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/forgot_password_screen.dart';
import 'package:twitter_clone/screens/home_screen.dart';
import 'package:twitter_clone/screens/signup_screen.dart';
import 'package:twitter_clone/widgets/entry_field.dart';
import 'package:twitter_clone/widgets/flat_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    _emailController = _emailController;
    _passwordController = _passwordController;
    super.initState();
  }

  @override
  void dispose() {
    _emailController = _emailController;
    _passwordController = _passwordController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sign in",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 100,
            child: Image.asset('assets/images/twitter_icon.png'),
          ),
          CustomEntryField(
            hint: 'Enter email',
            controller: _emailController,
            isPassword: false,
          ),
          CustomEntryField(
            hint: 'Enter password',
            controller: _passwordController,
            isPassword: true,
          ),
          Center(
            child: CustomFlatButton(
              label: "Submit",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              }),
              child: Center(
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ForgetPassword()),
              );
            }),
            child: Center(
              child: Text(
                'Forget password?',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
