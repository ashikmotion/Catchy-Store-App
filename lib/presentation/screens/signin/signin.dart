import 'package:catchy_store/presentation/resources/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../resources/constend.dart';
import '../../widgets/button.dart';
import '../../widgets/socile_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const String id = 'signin-screen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  bool _scure = false;
  bool checkBoxValue = false;

  final emailControlar = TextEditingController();
  final passwordControlar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage('assets/Logo.png'),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Welcome back',
                        style: kSigninHeaderTitleStyle,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Hey there! Sign in to continue',
                        style: kSigninHeaderdesStyle,
                      ),
                    ),
                    const SizedBox(height: 35),
                    //Email Address Section
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 3, bottom: 5),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        autofocus: false,
                        decoration: kSigninTextFildDecuration.copyWith(
                          hintText: 'Email or mobile number',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: emailControlar,
                        validator: (value) {
                          if (value == null) {
                            return 'Please enter Email';
                          } else if (!value.contains('@')) {
                            return 'Please Enter Valid Email';
                          }
                          return null;
                        },
                      ),
                    ),
                    //Password Section
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 3),
                      child: TextFormField(
                        obscureText: _scure,
                        cursorColor: Colors.black,
                        autofocus: false,
                        decoration: kSigninTextFildDecuration.copyWith(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _scure ? Icons.visibility_off : Icons.visibility,
                              color: const Color(0xff818181),
                            ),
                            onPressed: () {
                              setState(() {
                                _scure = !_scure;
                              });
                            },
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: passwordControlar,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Password';
                          }
                          return null;
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              value: checkBoxValue,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxValue = value!;
                                });
                              },
                            ),
                            const Text(
                              "Remember me",
                              style: kSigninrememberTextStyle,
                            )
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, Routes.recoveryPasswordRoute);
                          },
                          child: const Text("Forgot password?"),
                        )
                      ],
                    ),
                    //Sign In Button
                    ButtonWidget(
                      text: 'Sign In',
                      onTab: () {
                        Navigator.pushNamed(context, Routes.mainRoute);
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1.0,
                      color: const Color(0xffC6C7CB),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or sign in with',
                      style: kSigninOrTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1.0,
                      color: const Color(0xffC6C7CB),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SocileButton(
                      icon: FontAwesomeIcons.google,
                      color: Colors.orange,
                    ),
                    SocileButton(
                      icon: FontAwesomeIcons.facebookF,
                      color: Color(0xff1976D2),
                    ),
                    SocileButton(
                      icon: FontAwesomeIcons.twitter,
                      color: Color(0xff03A9F4),
                    ),
                    SocileButton(
                      icon: FontAwesomeIcons.apple,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              //Footer Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: kSigninDontTextStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.registerRoute);
                    },
                    child: const Text(
                      "Sign up",
                      style: kSigninSignupTextStyle,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
