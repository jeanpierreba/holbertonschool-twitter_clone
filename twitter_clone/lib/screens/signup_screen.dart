import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/signin_screen.dart';
import 'package:twitter_clone/widgets/entry_field.dart';
import 'package:twitter_clone/widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();

  @override
  void initState() {
    _nameController = _nameController;
    _passwordController = _passwordController;
    _emailController = _emailController;
    _confirmController = _confirmController;

    super.initState();
  }

   @override
  void dispose() {
    _nameController = _nameController;
    _passwordController = _passwordController;
    _emailController = _emailController;
    _confirmController = _confirmController;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.blue,
          onPressed: (() {
            Navigator.of(context).pop();
          }),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sign up",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 75,
              ),
              CustomEntryField(hint: 'Enter name', controller: _nameController, isPassword: false),
              CustomEntryField(hint: 'Enter email', controller: _emailController, isPassword: false),
              CustomEntryField(hint: 'Enter password', controller: _passwordController, isPassword: true),
              CustomEntryField(hint: 'Confirm password', controller: _passwordController, isPassword: true),
              Center(
                child: CustomFlatButton(label: 'Sign up', onPressed: () {
                  SignIn();
                })
              )
            ],
          ),
        ),
      ),
    );
  }
}