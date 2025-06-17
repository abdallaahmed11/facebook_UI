import 'package:facebook/feed.dart';
import 'package:facebook/widgets/images.dart';
import 'package:flutter/material.dart';
import 'widgets/images.dart';
import 'widgets/colors.dart';

class Login extends StatefulWidget {
  static const String routeName = "login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool notvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 16),
              Image.asset(
                images.applogo2,
                width: MediaQuery.of(context).size.width * .2,
              ),
              SizedBox(height: 40),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Mobile Number or Email Address',
                        hintStyle: TextStyle(fontSize: 16, color: colors.grey),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: notvisible,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: TextStyle(fontSize: 16, color: colors.grey),
                        suffixIcon: InkWell(
                          onTap: () {
                            notvisible = !notvisible;
                            setState(() {});
                          },
                          child: Icon(notvisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colors.grey, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Feeds.routeName);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: colors.blue,
                    foregroundColor: colors.white,
                    elevation: 0,
                    padding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(overlayColor: Colors.transparent),
                  child: Text(
                    'Forgotten Password ?',
                    style: TextStyle(color: colors.grey, fontSize: 16),
                  )),
              SizedBox(height: 250),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: colors.blue,
                    backgroundColor: colors.white,
                    elevation: 0,
                    padding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: colors.blue,width: 1)
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create Account',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                  child: Image.asset(
                images.metalogo,
                width: MediaQuery.of(context).size.width * .2,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
