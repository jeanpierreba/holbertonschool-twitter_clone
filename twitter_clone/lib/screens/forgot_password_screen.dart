import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/entry_field.dart';
import 'package:twitter_clone/widgets/flat_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    _emailController = _emailController;
    super.initState();
  }

  @override
  void dispose() {
    _emailController = _emailController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Forget password',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Center(
                child: Text(
                  'Forget password',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    backgroundColor: Colors.white,
                  )
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Enter your email address below to receive password reset instructions',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Center(
                child: CustomEntryField(
                  hint: 'Enter email',
                  controller: _emailController,
                  isPassword: false,
                ),
              ),
              Center(
                child: CustomFlatButton(label: 'Submit', onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
