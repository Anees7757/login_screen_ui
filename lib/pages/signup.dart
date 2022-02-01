import 'package:flutter/material.dart';
import '../pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        filled: true,
        fillColor: Colors.grey[200],
        hintText: hint,
        hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 53),
                Text('SignUp here',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    )),
                SizedBox(height: 4),
                Wrap(
                  children: [
                    Text('Already have an account? ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[400],
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text('Login',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                getTextField(hint: 'Full Name'),
                SizedBox(height: 16),
                getTextField(hint: 'Email'),
                SizedBox(height: 16),
                getTextField(hint: 'Password'),
                SizedBox(height: 16),
                getTextField(hint: 'Confirm Password'),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Create Account'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          vertical: 17,
                        )),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                        )),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      height: 1,
                    )),
                    SizedBox(width: 16),
                    Text('or sign up via', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[400])),
                    SizedBox(width: 16),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      height: 1,
                    )),
                  ],
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(
                          'https://cdn.iconscout.com/icon/free/png-256/google-2981831-2476479.png',
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Text('Google'),
                      ],
                    ),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          BorderSide(color: Colors.grey),
                        ),
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 17)),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
                SizedBox(height: 16),
                Wrap(
                  children: [
                    Text('By signing up you are agree to our',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[400],
                        )),
                    Text('terms and conditions',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.blueAccent,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
